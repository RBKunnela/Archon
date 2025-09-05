@echo off
echo Setting up Archon virtual environment...

REM Clear any existing virtual environment variables
set VIRTUAL_ENV=
set PYTHONHOME=

REM Navigate to the python directory
cd /d "D:\1.GITHUB\Archon\python"

REM Activate the Archon virtual environment
call ".venv\Scripts\activate.bat"

echo.
echo Archon virtual environment is now active!
echo Current directory: %CD%
echo Python location: %VIRTUAL_ENV%\Scripts\python.exe

REM Start a new PowerShell session with the clean environment
powershell -NoExit -Command "Write-Host 'Archon environment ready!' -ForegroundColor Green"
