@echo off
set "PATH=%LOCALAPPDATA%\MinGit\cmd;%PATH%"
cd /d "%~dp0"

echo =======================================================
echo Pushing VARUN AQUA TECH files to GitHub:
echo Repository: https://github.com/professionaleditor152-prog/varun-aqua-tech-
echo =======================================================
echo.

git push -u origin main --force

if %ERRORLEVEL% EQU 0 (
    echo.
    echo =======================================================
    echo SUCCESS! All files have been pushed to GitHub:
    echo https://github.com/professionaleditor152-prog/varun-aqua-tech-
    echo =======================================================
) else (
    echo.
    echo PUSH FAILED or was cancelled. Please check the error above.
)

pause
