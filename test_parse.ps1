$errors = $null
$tokens = $null
$ast = [System.Management.Automation.Language.Parser]::ParseFile(
    "$PSScriptRoot\ralph-chapter-loop.ps1",
    [ref]$tokens,
    [ref]$errors
)
if ($errors.Count -gt 0) {
    Write-Host "PARSE ERRORS:"
    foreach ($e in $errors) {
        Write-Host "  Line $($e.Extent.StartLineNumber): $($e.Message)"
    }
} else {
    Write-Host "Parse OK - no errors"
    # Check function definitions in AST
    $funcs = $ast.FindAll({ $args[0] -is [System.Management.Automation.Language.FunctionDefinitionAst] }, $true)
    Write-Host "Functions found: $($funcs.Count)"
    foreach ($f in $funcs) {
        Write-Host "  $($f.Name) (line $($f.Extent.StartLineNumber)-$($f.Extent.EndLineNumber))"
    }
    Write-Host ""
    Write-Host "Build-FinalSweepPrompt ends at line: $($funcs[8].Extent.EndLineNumber)"
    Write-Host "Run-FinalSweep starts at line: $($funcs[9].Extent.StartLineNumber)"
    Write-Host ""
    # What's between them?
    $stmts = $ast.EndBlock.Statements
    Write-Host "Top-level statements: $($stmts.Count)"
    foreach ($s in $stmts) {
        if ($s.Extent.StartLineNumber -ge 295 -and $s.Extent.StartLineNumber -le 310) {
            Write-Host "  Line $($s.Extent.StartLineNumber)-$($s.Extent.EndLineNumber): $($s.GetType().Name) = $($s.Extent.Text.Substring(0, [Math]::Min(80, $s.Extent.Text.Length)))"
        }
    }
}
