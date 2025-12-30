# Ralph Book Loop - Automated Manuscript Analysis

## Quick Start

Double-click `ralph-loop.bat` or run in PowerShell:

```powershell
cd "C:\BOOKS\Hard Thrust"
.\ralph-loop.ps1
```

## What It Does

The Ralph Loop automatically:
1. Invokes Claude Code with the `/ralph-book-loop` skill
2. Runs 16 analysis passes on your manuscript
3. Auto-fixes all issues found
4. Checks if more issues remain
5. Loops until clean or max iterations reached

## Parameters

```powershell
# Run with defaults (10 max iterations, auto-fix enabled)
.\ralph-loop.ps1

# Custom max iterations
.\ralph-loop.ps1 -MaxIterations 5

# Disable auto-fix (report only)
.\ralph-loop.ps1 -AutoFix:$false

# Verbose output
.\ralph-loop.ps1 -Verbose
```

## Files Created

| File | Purpose |
|------|---------|
| `RALPH_LOOP_STATE.json` | Tracks current loop state, can resume |
| `RALPH_LOOP_LOG.txt` | Timestamped log of all iterations |
| `LOOP_ITERATION_N_REPORT.md` | Detailed report per iteration |
| `RALPH_BOOK_LOOP_FINAL_SUMMARY.md` | Final summary when clean |

## How to Resume

The loop saves state after each iteration. If interrupted:
- Just run `ralph-loop.bat` again
- It will pick up from the last completed iteration

To start fresh:
- Delete `RALPH_LOOP_STATE.json`
- Or answer "Y" when prompted

## Exit Conditions

The loop exits when:
- **CLEAN:** No critical issues, ≤5 major, ≤20 minor
- **MAX_ITERATIONS:** Reached the limit (default 10)
- **USER_INTERRUPT:** Ctrl+C

## The 16 Analysis Passes

### Tier 1: Structural (Passes 1-4)
- Story bible sync
- Consistency check (timeline, names, details)
- Setup-payoff tracking
- Twist protection

### Tier 2: Misdirection (Passes 5-7)
- Signal counting (Eleanor killer, Josh victim)
- Signal quality rating
- Savvy reader simulation

### Tier 3: Prose Quality (Passes 8-12)
- Crutch word detection
- Filter word elimination
- Weak verb replacement
- Echo detection
- Sentence variety

### Tier 4: Scene Level (Passes 13-15)
- Pacing analysis
- Dialogue quality
- Emotional beats

### Tier 5: Aggregation (Pass 16)
- Compile all issues
- Grade manuscript A-F
- Generate report

## Troubleshooting

**"PowerShell execution policy" error:**
Run as Administrator:
```powershell
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
```

**"claude not found" error:**
Ensure Claude Code CLI is installed and in PATH:
```powershell
npm install -g @anthropic-ai/claude-code
```

**Loop never exits:**
Check `RALPH_LOOP_LOG.txt` for errors. The loop may be finding new issues each time (which is good!).

## Manual Alternative

If automation doesn't work, run manually in Claude Code:
```
/ralph-book-loop
```

Then when it finishes, run it again. Repeat until clean.
