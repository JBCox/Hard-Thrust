# Ralph Book Loop - Automated Manuscript Analysis
# Runs Claude Code iteratively until manuscript is clean or max iterations reached

param(
    [int]$MaxIterations = 10,
    [string]$Manuscript = "FULL_MANUSCRIPT.txt",
    [switch]$AutoFix = $true,
    [switch]$Verbose = $false
)

$ErrorActionPreference = "Stop"
$BookDir = "C:\BOOKS\Hard Thrust"
$StateFile = "$BookDir\RALPH_LOOP_STATE.json"
$LogFile = "$BookDir\RALPH_LOOP_LOG.txt"

# Initialize or load state
function Get-LoopState {
    if (Test-Path $StateFile) {
        return Get-Content $StateFile | ConvertFrom-Json
    }
    return @{
        iteration = 0
        status = "not_started"
        issues_found = @()
        last_run = $null
        total_fixes = 0
    }
}

function Save-LoopState($state) {
    $state | ConvertTo-Json -Depth 10 | Set-Content $StateFile
}

function Write-Log($message) {
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    "$timestamp | $message" | Tee-Object -FilePath $LogFile -Append
}

function Invoke-RalphIteration($iteration) {
    Write-Log "Starting iteration $iteration..."

    $prompt = @"
Run /ralph-book-loop iteration $iteration on FULL_MANUSCRIPT.txt

OUTPUT FORMAT REQUIRED:
At the end of your analysis, output a JSON block like this:
```json
{
    "iteration": $iteration,
    "status": "CLEAN" or "ISSUES_FOUND",
    "critical": 0,
    "major": 0,
    "minor": 0,
    "fixes_applied": 0,
    "continue": true or false
}
```

If issues are found and $($AutoFix ? "auto-fix is enabled" : "waiting for approval"), apply fixes.
"@

    # Run Claude Code with the prompt
    $output = claude --print "$prompt" 2>&1

    # Parse the JSON result from output
    $jsonMatch = [regex]::Match($output, '```json\s*({[\s\S]*?})\s*```')

    if ($jsonMatch.Success) {
        try {
            $result = $jsonMatch.Groups[1].Value | ConvertFrom-Json
            return $result
        }
        catch {
            Write-Log "Failed to parse JSON result: $_"
            return @{
                iteration = $iteration
                status = "PARSE_ERROR"
                continue = $false
            }
        }
    }
    else {
        Write-Log "No JSON result found in output"
        # Check for common completion signals
        if ($output -match "CLEAN|no issues|publication.ready") {
            return @{
                iteration = $iteration
                status = "CLEAN"
                continue = $false
            }
        }
        return @{
            iteration = $iteration
            status = "UNKNOWN"
            continue = $true  # Continue to be safe
        }
    }
}

# Main loop
Write-Host @"

==============================================
   RALPH BOOK LOOP - Automated Analysis
==============================================
Manuscript: $BookDir\$Manuscript
Max Iterations: $MaxIterations
Auto-Fix: $AutoFix
==============================================

"@

$state = Get-LoopState
Write-Log "Loaded state: iteration $($state.iteration), status: $($state.status)"

if ($state.status -eq "CLEAN") {
    Write-Host "Previous run completed CLEAN. Reset state to run again? (Y/N)"
    $reset = Read-Host
    if ($reset -eq "Y") {
        $state.iteration = 0
        $state.status = "not_started"
        Save-LoopState $state
    }
    else {
        Write-Host "Exiting. Manuscript is already clean."
        exit 0
    }
}

$startIteration = $state.iteration + 1

for ($i = $startIteration; $i -le $MaxIterations; $i++) {
    Write-Host "`n--- ITERATION $i of $MaxIterations ---`n"

    $result = Invoke-RalphIteration $i

    # Update state
    $state.iteration = $i
    $state.status = $result.status
    $state.last_run = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    if ($result.fixes_applied) {
        $state.total_fixes += $result.fixes_applied
    }
    Save-LoopState $state

    # Log results
    Write-Log "Iteration $i complete: $($result.status)"
    Write-Log "  Critical: $($result.critical), Major: $($result.major), Minor: $($result.minor)"
    Write-Log "  Fixes applied: $($result.fixes_applied)"

    # Check exit conditions
    if ($result.status -eq "CLEAN") {
        Write-Host "`n=========================================="
        Write-Host "   MANUSCRIPT IS CLEAN!"
        Write-Host "   Completed in $i iterations"
        Write-Host "   Total fixes applied: $($state.total_fixes)"
        Write-Host "==========================================`n"
        break
    }

    if (-not $result.continue) {
        Write-Host "`nLoop requested stop. Check logs for details."
        break
    }

    # Brief pause between iterations
    Write-Host "Waiting 5 seconds before next iteration..."
    Start-Sleep -Seconds 5
}

if ($i -gt $MaxIterations) {
    Write-Host "`n=========================================="
    Write-Host "   MAX ITERATIONS REACHED"
    Write-Host "   Review RALPH_LOOP_LOG.txt for details"
    Write-Host "==========================================`n"
}

Write-Log "Loop finished. Final status: $($state.status)"
