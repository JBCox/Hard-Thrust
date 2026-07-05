# Ralph Chapter Loop - Chapter-by-Chapter Consistency Analysis
# Analyzes and fixes one chapter at a time, validates against story bible,
# then does a final cross-chapter sweep.

param(
    [int]$StartChapter = 1,
    [int]$EndChapter = 0,          # 0 = all chapters
    [switch]$FinalSweepOnly = $false,
    [switch]$DryRun = $false,       # Report issues without fixing
    [switch]$Resume = $false,       # Resume from last completed chapter
    [int]$MaxRetries = 2,           # Max fix-validate retries per chapter
    [string]$Model = "sonnet"       # Model to use (sonnet, opus, haiku)
)

$ErrorActionPreference = "Stop"
$BookDir = "C:\BOOKS\Hard Thrust"
$Manuscript = "$BookDir\FULL_MANUSCRIPT.txt"
$StoryBible = "$BookDir\STORY_BIBLE.md"
$TimelineMap = "$BookDir\TIMELINE_MAP.md"
$StateFile = "$BookDir\RALPH_CHAPTER_STATE.json"
$LogFile = "$BookDir\RALPH_CHAPTER_LOG.txt"
$ChangeLog = "$BookDir\RALPH_CHANGES.md"
$ReportDir = "$BookDir\chapter_reports"

# Ensure report directory exists
if (-not (Test-Path $ReportDir)) {
    New-Item -ItemType Directory -Path $ReportDir | Out-Null
}

# ===== UTILITY FUNCTIONS =====

function Write-Log($message, [switch]$NoConsole) {
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $entry = "$timestamp | $message"
    Add-Content -Path $LogFile -Value $entry
    if (-not $NoConsole) {
        Write-Host $entry
    }
}

function Get-LoopState {
    if (Test-Path $StateFile) {
        return Get-Content $StateFile -Raw | ConvertFrom-Json
    }
    return [PSCustomObject]@{
        current_chapter = 0
        status = "not_started"
        chapters_processed = @()
        chapters_with_issues = @()
        total_fixes = 0
        started_at = $null
        last_updated = $null
    }
}

function Save-LoopState($state) {
    $state.last_updated = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $state | ConvertTo-Json -Depth 10 | Set-Content $StateFile -Encoding UTF8
}

# ===== CHAPTER EXTRACTION =====

function Get-ChapterBoundaries {
    Write-Log "Extracting chapter boundaries..."

    $content = Get-Content $Manuscript -Raw
    $lines = $content -split "`n"

    $chapters = @()
    $pattern = '^#\s+CHAPTER\s+(\d+)'

    for ($i = 0; $i -lt $lines.Count; $i++) {
        if ($lines[$i] -match $pattern) {
            $chapNum = [int]$Matches[1]
            $chapters += [PSCustomObject]@{
                number = $chapNum
                title = $lines[$i].Trim()
                start_line = $i + 1  # 1-indexed
            }
        }
    }

    # Set end lines
    for ($i = 0; $i -lt $chapters.Count; $i++) {
        if ($i -lt $chapters.Count - 1) {
            $chapters[$i] | Add-Member -NotePropertyName "end_line" -NotePropertyValue ($chapters[$i + 1].start_line - 1)
        } else {
            $chapters[$i] | Add-Member -NotePropertyName "end_line" -NotePropertyValue $lines.Count
        }
    }

    Write-Log "Found $($chapters.Count) chapters"
    return $chapters
}

function Get-ChapterText($chapter) {
    $content = Get-Content $Manuscript
    $startIdx = $chapter.start_line - 1
    $endIdx = [Math]::Min($chapter.end_line - 1, $content.Count - 1)
    return ($content[$startIdx..$endIdx] -join "`n")
}

function Get-AdjacentContext($chapters, $currentIdx) {
    # Get summary of previous and next chapter for cross-reference
    $context = ""

    if ($currentIdx -gt 0) {
        $prevChap = $chapters[$currentIdx - 1]
        $prevText = Get-ChapterText $prevChap
        # Take first 50 lines as summary
        $prevLines = ($prevText -split "`n") | Select-Object -First 50
        $context += "=== PREVIOUS CHAPTER ($($prevChap.title)) - First 50 lines ===`n"
        $context += ($prevLines -join "`n")
        $context += "`n`n"
    }

    if ($currentIdx -lt $chapters.Count - 1) {
        $nextChap = $chapters[$currentIdx + 1]
        $nextText = Get-ChapterText $nextChap
        $nextLines = ($nextText -split "`n") | Select-Object -First 50
        $context += "=== NEXT CHAPTER ($($nextChap.title)) - First 50 lines ===`n"
        $context += ($nextLines -join "`n")
    }

    return $context
}

# ===== ANALYSIS PROMPTS =====

function Build-AnalysisPrompt($chapterText, $chapterInfo, $adjacentContext, $storyBible, $timelineMap) {
    $dryRunNote = ""
    if ($DryRun) {
        $dryRunNote = "NOTE: DRY RUN MODE - Report issues only, do NOT apply fixes."
    }

    return @"
You are a manuscript consistency auditor. Analyze the following chapter line by line for logical errors.

$dryRunNote

## YOUR TASK

Analyze CHAPTER $($chapterInfo.number) ("$($chapterInfo.title)") for these 5 categories of issues:

### CHECK 1: Character Knowledge
- Does any character state, think, or reference information that the READER doesn't know yet at this point?
- Does any character claim to know something they couldn't know based on established events?
- Are there internal contradictions in what a character knows vs. claims not to know?

### CHECK 2: Timeline Consistency
- Do all dates, durations ("X ago", "six months"), and time-of-day references align?
- Is the day/date header consistent with the story's established calendar?
- Do "recent" events referenced actually match established chronology?

### CHECK 3: Spatial & Physical Consistency
- Do descriptions of locations match what's established in the Story Bible?
- Are characters in the correct physical locations for their actions?
- Do architectural details (rooms, floors, distances) stay consistent?

### CHECK 4: Names & Identity
- Are all character names spelled consistently?
- Are ages, physical descriptions, and roles consistent with the Story Bible?
- Are relationships correctly referenced?

### CHECK 5: Spoiler Protection
- Does this chapter accidentally reveal any of the protected twists listed in the Story Bible?
- Does any line make it too obvious that: Josh is the killer, Eleanor is investigating him, the victim is Eleanor's sister, or the 1998 victim is Josh's mother?
- Are misdirection signals maintained (reader should suspect Eleanor, not Josh)?

## REFERENCE DOCUMENTS

### Story Bible (Consistency Rules):
$storyBible

### Timeline Map:
$timelineMap

### Adjacent Chapter Context:
$adjacentContext

## CHAPTER TEXT TO ANALYZE:
$chapterText

## OUTPUT FORMAT

Respond with ONLY a JSON block (no other text before or after):

```json
{
    "chapter": $($chapterInfo.number),
    "status": "CLEAN" or "ISSUES_FOUND",
    "issues": [
        {
            "category": "character_knowledge|timeline|spatial|names|spoiler",
            "severity": "CRITICAL|HIGH|MEDIUM",
            "line_text": "the exact line with the issue",
            "description": "what's wrong",
            "fix": "the corrected text (full line replacement)",
            "rationale": "why this fix is safe and doesn't introduce new issues"
        }
    ],
    "notes": "any observations that aren't errors but worth tracking"
}
```

IMPORTANT RULES:
- Only report genuine errors, not stylistic preferences
- CRITICAL = breaks story logic or spoils a twist
- HIGH = creates reader confusion or contradicts established facts
- MEDIUM = minor wording issues that could be clearer
- Every fix MUST be validated against the Story Bible
- Fixes must NOT introduce spoilers about protected twists
- If unsure whether something is an error, mark it MEDIUM and explain your uncertainty
- Return "CLEAN" status if no issues found
"@
}

function Build-ValidationPrompt($chapterText, $chapterInfo, $fixes, $storyBible) {
    return @"
You are a fix validator. The following fixes were applied to CHAPTER $($chapterInfo.number).
Your job is to verify that NONE of these fixes introduced new problems.

## FIXES THAT WERE APPLIED:
$($fixes | ConvertTo-Json -Depth 5)

## UPDATED CHAPTER TEXT (after fixes):
$chapterText

## STORY BIBLE (ground truth):
$storyBible

## VALIDATION CHECKS:
1. Do the fixes contradict any Story Bible rules?
2. Do the fixes accidentally reveal protected twists?
3. Do the fixes create new timeline inconsistencies?
4. Do the fixes make characters know things they shouldn't?
5. Are the fixes grammatically correct and stylistically consistent?

## OUTPUT FORMAT:

```json
{
    "chapter": $($chapterInfo.number),
    "validation": "PASS" or "FAIL",
    "new_issues": [
        {
            "introduced_by_fix": "which fix caused this",
            "description": "what new problem was created",
            "suggested_revision": "better alternative"
        }
    ]
}
```

Return "PASS" if all fixes are safe. Return "FAIL" only if fixes created genuine new problems.
"@
}

function Build-FinalSweepPrompt($fullManuscript, $storyBible, $timelineMap) {
    $lines = @(
        "You are performing a FINAL cross-chapter consistency sweep on the full manuscript."
        ""
        "Previous passes have fixed per-chapter issues. Now check for CROSS-CHAPTER problems that only appear when reading the full text:"
        ""
        "1. **Fact Drift** - Does a fact established in Ch1 get contradicted in Ch15?"
        "2. **Timeline Gaps** - Do events referenced across chapters align chronologically?"
        "3. **Character Arc Continuity** - Do character knowledge/beliefs evolve logically across chapters?"
        "4. **Repeated Information** - Same fact stated identically in multiple chapters (redundancy)?"
        "5. **Dangling References** - Something mentioned in one chapter that's never addressed?"
        ""
        "## STORY BIBLE:"
        "$storyBible"
        ""
        "## TIMELINE MAP:"
        "$timelineMap"
        ""
        "## FULL MANUSCRIPT:"
        "$fullManuscript"
        ""
        "## OUTPUT FORMAT:"
        ""
        '{"sweep_status": "CLEAN" or "ISSUES_FOUND", "cross_chapter_issues": [{"chapters_involved": [1, 5], "category": "fact_drift|timeline|character_arc|redundancy|dangling", "severity": "CRITICAL|HIGH|MEDIUM", "description": "what is inconsistent", "chapter_lines": {"ch1": "text in ch1", "ch5": "conflicting text in ch5"}, "suggested_fix": "which chapter to change and how"}], "summary": "overall manuscript health assessment"}'
        ""
        "Return ONLY valid JSON, no markdown fences."
    )
    return ($lines -join "`n")
}

# ===== FIX APPLICATION =====

function Do-ApplyFixes($fixes, $chapterInfo) {
    if ($fixes.Count -eq 0) { return 0 }
    if ($DryRun) {
        Write-Log "  DRY RUN: Would apply $($fixes.Count) fixes"
        return 0
    }

    $fixList = @()
    foreach ($f in $fixes) {
        $fixList += @{ old = $f.line_text; new = $f.fix; desc = $f.description }
    }
    $fixData = @{ manuscript = $Manuscript; fixes = $fixList }

    $fixFile = [System.IO.Path]::GetTempFileName()
    $json = $fixData | ConvertTo-Json -Depth 5 -Compress
    [System.IO.File]::WriteAllText($fixFile, $json, [System.Text.UTF8Encoding]::new($false))

    try {
        $pyScript = Join-Path $BookDir "apply_fixes.py"
        $prevEAP = $ErrorActionPreference
        $ErrorActionPreference = "Continue"
        $result = python $pyScript $fixFile 2>&1
        $ErrorActionPreference = $prevEAP
        Write-Log "  Applied fixes: $result"
    }
    finally {
        Remove-Item $fixFile -ErrorAction SilentlyContinue
    }

    if ("$result" -match "(\d+)/(\d+)") {
        return [int]$Matches[1]
    }
    return 0
}

function Do-LogChanges($fixes, $chapterInfo, $applied, $isDryRun) {
    if ($fixes.Count -eq 0) { return }

    $modeLabel = ""
    if ($isDryRun) { $modeLabel = " (DRY RUN)" }
    Add-Content -Path $ChangeLog -Value ("`n### Chapter " + $chapterInfo.number + $modeLabel + "`n") -Encoding UTF8

    foreach ($fix in $fixes) {
        $sev = $fix.severity
        $cat = $fix.category
        $desc = $fix.description
        $before = $fix.line_text
        $after = $fix.fix
        $reason = $fix.rationale

        $entry = "`n**[$sev] $cat**`n"
        $entry += "- **Issue:** $desc`n"
        $entry += "- **Before:** $before`n"
        $entry += "- **After:** $after`n"
        $entry += "- **Rationale:** $reason`n"
        Add-Content -Path $ChangeLog -Value $entry -Encoding UTF8
    }
}

# ===== CLAUDE INVOCATION =====

function Invoke-Claude($prompt) {
    # Pipe prompt via stdin to avoid command-line length limits
    $tempFile = [System.IO.Path]::GetTempFileName()
    $prompt | Set-Content $tempFile -Encoding UTF8

    try {
        # Use Get-Content to pipe file contents to claude via stdin
        # Budget cap prevents runaway costs in automated loops
        $output = Get-Content $tempFile -Raw | claude -p --dangerously-skip-permissions --model $Model --max-budget-usd 5 2>&1
        return $output -join "`n"
    }
    finally {
        Remove-Item $tempFile -ErrorAction SilentlyContinue
    }
}

function Parse-JsonResponse($output) {
    # Extract JSON from response (may be wrapped in ```json blocks)
    $jsonMatch = [regex]::Match($output, '```json\s*([\s\S]*?)\s*```')

    if ($jsonMatch.Success) {
        try {
            return $jsonMatch.Groups[1].Value | ConvertFrom-Json
        }
        catch {
            Write-Log "  WARNING: Failed to parse JSON: $_"
            return $null
        }
    }

    # Try parsing raw output as JSON
    try {
        return $output | ConvertFrom-Json
    }
    catch {
        Write-Log "  WARNING: No valid JSON in response"
        return $null
    }
}

# ===== MAIN LOOP =====

function Run-ChapterLoop {
    Write-Host @"

============================================================
   RALPH CHAPTER LOOP - Consistency Analysis & Fix
============================================================
   Manuscript: $Manuscript
   Mode: $(if ($DryRun) { "DRY RUN (report only)" } else { "ANALYZE + FIX" })
   Chapters: $(if ($EndChapter -gt 0) { "$StartChapter to $EndChapter" } else { "$StartChapter to end" })
============================================================

"@

    # Load state
    $state = Get-LoopState

    if ($Resume -and $state.status -ne "not_started") {
        $StartChapter = $state.current_chapter + 1
        Write-Log "Resuming from chapter $StartChapter"
    } else {
        $state.status = "running"
        $state.started_at = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
        $state.chapters_processed = @()
        $state.chapters_with_issues = @()
        $state.total_fixes = 0

        # Initialize changelog
        $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
        $mode = "ANALYZE + FIX"
        if ($DryRun) { $mode = "DRY RUN" }
        $chapRange = "all"
        if ($EndChapter -gt 0) { $chapRange = "$StartChapter to $EndChapter" }
        $header = "# Ralph Chapter Loop - Change Log`n"
        $header += "**Started:** $timestamp`n"
        $header += "**Mode:** $mode`n"
        $header += "**Model:** $Model`n"
        $header += "**Chapters:** $chapRange`n`n---`n"
        Set-Content -Path $ChangeLog -Value $header -Encoding UTF8
    }

    # Extract chapters
    $chapters = Get-ChapterBoundaries

    if ($EndChapter -eq 0) {
        $EndChapter = $chapters[-1].number
    }

    # Load reference docs
    Write-Log "Loading reference documents..."
    $storyBible = if (Test-Path $StoryBible) { Get-Content $StoryBible -Raw } else { "(No story bible found)" }
    $timelineMap = if (Test-Path $TimelineMap) { Get-Content $TimelineMap -Raw } else { "(No timeline map found)" }

    # Process each chapter
    foreach ($chap in $chapters) {
        if ($chap.number -lt $StartChapter -or $chap.number -gt $EndChapter) { continue }

        Write-Host "`n--- CHAPTER $($chap.number): $($chap.title) ---"
        Write-Host "    Lines $($chap.start_line) - $($chap.end_line)"
        Write-Log "Processing chapter $($chap.number)..."

        $state.current_chapter = $chap.number
        Save-LoopState $state

        # Get chapter text and context
        $chapterText = Get-ChapterText $chap
        $chapIdx = [Array]::IndexOf($chapters, $chap)
        $adjacentContext = Get-AdjacentContext $chapters $chapIdx

        # Phase 1: Analyze
        Write-Host "    [1/3] Analyzing..."
        $prompt = Build-AnalysisPrompt $chapterText $chap $adjacentContext $storyBible $timelineMap
        $output = Invoke-Claude $prompt
        $result = Parse-JsonResponse $output

        if (-not $result) {
            Write-Log "  ERROR: Could not parse analysis result for chapter $($chap.number)"
            # Save raw output for debugging
            $output | Set-Content "$ReportDir\ch$($chap.number)_raw_output.txt" -Encoding UTF8
            continue
        }

        # Save analysis report
        $result | ConvertTo-Json -Depth 10 | Set-Content "$ReportDir\ch$($chap.number)_analysis.json" -Encoding UTF8

        if ($result.status -eq "CLEAN") {
            Write-Host "    CLEAN - No issues found" -ForegroundColor Green
            Write-Log "  Chapter $($chap.number): CLEAN"
            $state.chapters_processed += $chap.number
            Save-LoopState $state
            continue
        }

        # Issues found
        $issues = $result.issues
        $critCount = ($issues | Where-Object { $_.severity -eq "CRITICAL" }).Count
        $highCount = ($issues | Where-Object { $_.severity -eq "HIGH" }).Count
        $medCount = ($issues | Where-Object { $_.severity -eq "MEDIUM" }).Count

        Write-Host "    ISSUES: $critCount CRITICAL, $highCount HIGH, $medCount MEDIUM" -ForegroundColor Yellow
        Write-Log "  Chapter $($chap.number): $($issues.Count) issues ($critCount C, $highCount H, $medCount M)"

        # Phase 2: Fix (if not dry run)
        $retries = 0
        $fixesApplied = 0

        while ($retries -lt $MaxRetries) {
            Write-Host "    [2/3] Applying fixes (attempt $($retries + 1))..."
            $fixesApplied = Do-ApplyFixes $issues $chap
            $state.total_fixes += $fixesApplied

            # Log changes to changelog
            Do-LogChanges $issues $chap $fixesApplied $DryRun

            if ($DryRun -or $fixesApplied -eq 0) { break }

            # Phase 3: Validate
            Write-Host "    [3/3] Validating fixes..."
            $updatedText = Get-ChapterText $chap
            $valPrompt = Build-ValidationPrompt $updatedText $chap $issues $storyBible
            $valOutput = Invoke-Claude $valPrompt
            $valResult = Parse-JsonResponse $valOutput

            if (-not $valResult -or $valResult.validation -eq "PASS") {
                Write-Host "    VALIDATED - Fixes are safe" -ForegroundColor Green
                Write-Log "  Chapter $($chap.number): Fixes validated"
                break
            } else {
                Write-Host "    VALIDATION FAILED - Retrying..." -ForegroundColor Red
                Write-Log "  Chapter $($chap.number): Validation failed, retry $($retries + 1)"
                $issues = $valResult.new_issues
                $retries++
            }
        }

        if ($retries -ge $MaxRetries) {
            Write-Host "    WARNING: Max retries reached for chapter $($chap.number)" -ForegroundColor Red
            Write-Log "  Chapter $($chap.number): MAX RETRIES - manual review needed"
        }

        $state.chapters_processed += $chap.number
        $state.chapters_with_issues += $chap.number
        Save-LoopState $state

        # Brief pause between chapters
        Start-Sleep -Seconds 3
    }

    # Final sweep
    if (-not $DryRun) {
        Run-FinalSweep $storyBible $timelineMap
    }

    # Final status
    $state.status = "completed"
    Save-LoopState $state

    # Write changelog summary
    $endTimestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $issueList = ""
    if ($state.chapters_with_issues.Count -gt 0) {
        $issueList = " (" + ($state.chapters_with_issues -join ", ") + ")"
    }
    $summary = "`n---`n`n## Summary`n"
    $summary += "**Completed:** $endTimestamp`n"
    $summary += "**Chapters processed:** $($state.chapters_processed.Count)`n"
    $summary += "**Chapters with issues:** $($state.chapters_with_issues.Count)$issueList`n"
    $summary += "**Total fixes applied:** $($state.total_fixes)`n"
    Add-Content -Path $ChangeLog -Value $summary -Encoding UTF8

    Write-Host @"

============================================================
   RALPH CHAPTER LOOP - COMPLETE
============================================================
   Chapters processed: $($state.chapters_processed.Count)
   Chapters with issues: $($state.chapters_with_issues.Count)
   Total fixes applied: $($state.total_fixes)
   Change log: $ChangeLog
   Reports saved to: $ReportDir
============================================================

"@
}

function Run-FinalSweep {
    param($storyBible, $timelineMap)

    Write-Host "`n=== FINAL CROSS-CHAPTER SWEEP ==="
    Write-Log "Starting final sweep..."

    $fullManuscript = Get-Content $Manuscript -Raw

    # The full manuscript may be too large for a single prompt.
    # Split into chunks and do targeted cross-chapter checks.
    $prompt = Build-FinalSweepPrompt $fullManuscript $storyBible $timelineMap

    # Check if prompt is too large (>100K chars) and truncate if needed
    if ($prompt.Length -gt 150000) {
        Write-Log "  Manuscript too large for single sweep - using chapter summaries"
        # Use a condensed version
        $chapters = Get-ChapterBoundaries
        $summaries = ""
        foreach ($chap in $chapters) {
            $text = Get-ChapterText $chap
            $firstLines = ($text -split "`n") | Select-Object -First 30
            $summaries += "=== $($chap.title) (lines $($chap.start_line)-$($chap.end_line)) ===`n"
            $summaries += ($firstLines -join "`n")
            $summaries += "`n...`n`n"
        }
        $prompt = Build-FinalSweepPrompt $summaries $storyBible $timelineMap
    }

    $output = Invoke-Claude $prompt
    $result = Parse-JsonResponse $output

    if ($result) {
        $result | ConvertTo-Json -Depth 10 | Set-Content "$ReportDir\final_sweep.json" -Encoding UTF8

        if ($result.sweep_status -eq "CLEAN") {
            Write-Host "    FINAL SWEEP: CLEAN" -ForegroundColor Green
        } else {
            $issueCount = $result.cross_chapter_issues.Count
            Write-Host "    FINAL SWEEP: $issueCount cross-chapter issues found" -ForegroundColor Yellow
            Write-Host "    See: $ReportDir\final_sweep.json"
        }
    } else {
        Write-Log "  WARNING: Could not parse final sweep results"
        $output | Set-Content "$ReportDir\final_sweep_raw.txt" -Encoding UTF8
    }
}

# ===== ENTRY POINT =====

if ($FinalSweepOnly) {
    $storyBible = if (Test-Path $StoryBible) { Get-Content $StoryBible -Raw } else { "" }
    $timelineMap = if (Test-Path $TimelineMap) { Get-Content $TimelineMap -Raw } else { "" }
    Run-FinalSweep $storyBible $timelineMap
} else {
    Run-ChapterLoop
}
