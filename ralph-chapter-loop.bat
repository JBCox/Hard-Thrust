@echo off
REM Ralph Chapter Loop - Chapter-by-Chapter Consistency Analysis
REM Analyzes and fixes one chapter at a time

echo.
echo ============================================================
echo    RALPH CHAPTER LOOP - Chapter Consistency
echo ============================================================
echo.

cd /d "C:\BOOKS\Hard Thrust"

REM Check PowerShell execution policy
powershell -Command "Get-ExecutionPolicy" | findstr /I "Restricted" >nul
if %errorlevel% equ 0 (
    echo Setting execution policy...
    powershell -Command "Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned -Force"
)

REM Parse arguments
set ARGS=%*
if "%ARGS%"=="" (
    echo Usage:
    echo   ralph-chapter-loop.bat                    Run all chapters
    echo   ralph-chapter-loop.bat -StartChapter 5    Start from chapter 5
    echo   ralph-chapter-loop.bat -DryRun            Report only, no fixes
    echo   ralph-chapter-loop.bat -Resume            Resume from last checkpoint
    echo   ralph-chapter-loop.bat -FinalSweepOnly    Only run final sweep
    echo.
    set /p ARGS="Enter arguments (or press Enter for defaults): "
)

powershell -ExecutionPolicy Bypass -File "ralph-chapter-loop.ps1" %ARGS%

echo.
echo Loop complete. Check chapter_reports\ for details.
pause
