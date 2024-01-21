@echo off

REM Load the new PATH variable from the temporary text file
call setx ANDROID_CMAKE_BUILDER %~dp0 /m

if %errorlevel% neq 0 (
    exit /b 1
)

echo Info: Successfully installed!

exit /b 0