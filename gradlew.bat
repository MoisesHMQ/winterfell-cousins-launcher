@echo off
setlocal

set "GRADLE_VERSION=9.5.1"
set "GRADLE_HOME=%USERPROFILE%\.gradle\wrapper\dists\gradle-%GRADLE_VERSION%-bin\gradle-%GRADLE_VERSION%"

if not exist "%GRADLE_HOME%\bin\gradle.bat" (
    powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0scripts\install-gradle.ps1" "%GRADLE_VERSION%"
    if errorlevel 1 exit /b %errorlevel%
)

call "%GRADLE_HOME%\bin\gradle.bat" %*
