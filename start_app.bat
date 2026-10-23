@echo off
title SETs Energy Optimization & AI Proposal Server
echo ============================================================
echo   SETs Energy Optimization & AI Proposal System
echo   Starting Local FastAPI Backend & Opening Web UI...
echo ============================================================
start "" "http://127.0.0.1:8000"
"C:\Users\ZAKARIYA ABDUL BARI\AppData\Local\Programs\Python\Python311\python.exe" "%~dp0server.py"
pause

