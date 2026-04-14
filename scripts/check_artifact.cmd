@echo off
setlocal enabledelayedexpansion

set FILE=artifact\message.txt

if not exist %FILE% (
    echo ERROR: artifact file not found
    exit /b 1
)

findstr /C:"DevOps" %FILE% >nul
if errorlevel 1 (
    echo ERROR: Keyword 'DevOps' not found
    exit /b 1
)

echo SUCCESS: Artifact check passed
exit /b 0
