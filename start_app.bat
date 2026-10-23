@echo off
title SETs Energy Optimization & AI Proposal System
echo ============================================================
echo   SETs Energy Optimization & AI Proposal Suite
echo   Hardware: NVIDIA GeForce RTX 3090 (24GB VRAM)
echo   Model: Qwen2.5-Coder-32B-Instruct (D:\AI)
echo ============================================================

set "PATH=%PATH%;C:\Users\ZAKARIYA ABDUL BARI\AppData\Local\Programs\Ollama;C:\Users\ZAKARIYA ABDUL BARI\AppData\Local\Programs\Python\Python311;C:\Users\ZAKARIYA ABDUL BARI\AppData\Local\Microsoft\WinGet\Links"
cd /d "%~dp0"

echo.
echo [1/3] Checking Ollama AI Daemon...
tasklist /fi "imagename eq ollama.exe" | find /i "ollama.exe" >nul
if %ERRORLEVEL% NEQ 0 (
    echo [INFO] Starting Ollama AI Service on port 11434...
    start "" /b "%LOCALAPPDATA%\Programs\Ollama\ollama.exe" serve
    timeout /t 3 /nobreak >nul
) else (
    echo [OK] Ollama AI Daemon is already active on port 11434.
)

echo.
echo [2/3] Opening Web Browser at http://127.0.0.1:8000 ...
start "" "http://127.0.0.1:8000"

echo.
echo [3/3] Starting FastAPI Server on http://127.0.0.1:8000 ...
echo ============================================================
echo   Application is LIVE!
echo   Close this window when you wish to shut down the server.
echo ============================================================
"C:\Users\ZAKARIYA ABDUL BARI\AppData\Local\Programs\Python\Python311\python.exe" "%~dp0server.py"
pause
