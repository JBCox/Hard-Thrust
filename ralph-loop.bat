@echo off
REM Ralph Book Loop - Quick Start
REM Run this to start the automated manuscript analysis loop

echo.
echo ========================================
echo    RALPH BOOK LOOP - Quick Start
echo ========================================
echo.

cd /d "C:\BOOKS\Hard Thrust"

REM Check if PowerShell execution policy allows scripts
powershell -Command "Get-ExecutionPolicy" | findstr /I "Restricted" >nul
if %errorlevel% equ 0 (
    echo WARNING: PowerShell execution policy is Restricted
    echo Running: Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
    powershell -Command "Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned -Force"
)

REM Run the Ralph Loop
powershell -ExecutionPolicy Bypass -File "ralph-loop.ps1" %*

echo.
echo Loop complete. Check RALPH_LOOP_LOG.txt for details.
pause
