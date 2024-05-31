@echo off
::This is to view errors without the program closing.
::if not defined in_subprocess (cmd /k set in_subprocess=y ^& %0 %*) & exit )
setlocal

:: Change the current directory to the batch file directory.
cd /d "%~dp0"

:: Get the path of the batch file without the trailing backslash
set "batchPath=%~dp0"
if "%batchPath:~-1%"=="\" set "batchPath=%batchPath:~0,-1%"

:: Use a python.exe shortcut within the same folder:
:: start "" "python.lnk" -m http.server --directory "%batchPath%"

:: Use the default python installation:
start "" python -m http.server --directory "%batchPath%"

:: Open the URL in the default web browser
start "" "http://localhost:8000/"

:: Access over LAN (REQUIRES FIREWALL PERMS; UNSTABLE; UNUSABLE)
::setlocal enabledelayedexpansion
::for /f "tokens=2 delims=:" %%i in ('ipconfig ^| findstr IPv4') do set "ip=%%i"
::set "url=http://%ip: =%:8000"
::start "" python -m http.server 8000 --bind "%ip: =%" --directory "%batchPath%"
::start "" %url%

endlocal
pause