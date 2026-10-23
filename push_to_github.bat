@echo off
title Push SETs Energy Proposal App to GitHub
echo ============================================================
echo   GitHub Repository Creation ^& Push Utility
echo ============================================================
set "PATH=%PATH%;C:\Program Files\GitHub CLI;C:\Users\ZAKARIYA ABDUL BARI\AppData\Local\Microsoft\WinGet\Links"
cd /d "%~dp0"

gh auth status >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo [1/2] Authenticating with your GitHub account via Web Browser...
    gh auth login -h github.com -p https -w
)

echo [2/2] Creating GitHub Repository and Pushing Code...
gh repo create sets-energy-optimization-proposal --public --source=. --remote=origin --push
if %ERRORLEVEL% EQU 0 (
    echo.
    echo SUCCESS! Your application has been pushed to GitHub.
) else (
    echo.
    echo Repository may already exist. Pushing to origin main...
    git push -u origin main
)
pause
