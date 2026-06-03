@echo off
setlocal enabledelayedexpansion

REM =========================
REM Grafana-like Monitoring
REM =========================

set BACKEND_DIR=%~dp0backend
set FRONTEND_DIR=%~dp0frontend

REM Start backend (use app-dir so module discovery is reliable)
REM Jalankan di foreground supaya error terlihat di terminal.
py -m pip install -r %BACKEND_DIR%requirements.txt
py -m uvicorn app.main:app --app-dir %BACKEND_DIR% --host 127.0.0.1 --port 8000



REM Wait until backend is ready (max ~15s)
set /a i=0
:wait_loop
set /a i+=1
for /f %%A in ('powershell -NoProfile -Command "try{(Invoke-WebRequest -UseBasicParsing -TimeoutSec 1 http://127.0.0.1:8000/api/events?limit=1).StatusCode}catch{echo 0}"') do set STATUS=%%A
if "%STATUS%"=="200" goto backend_ready
if %i% geq 15 goto backend_ready
timeout /t 1 /nobreak >nul
goto wait_loop

:backend_ready
REM Open UI via backend server
start "UI" cmd /c "start http://127.0.0.1:8000/" 

