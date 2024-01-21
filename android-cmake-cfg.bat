@echo off

REM Check if all required parameters are provided
if "%~1"=="" (
    echo Error: Build type not provided.
    echo Usage: build_script.bat [BuildType] [ABI] [AndroidPlatform]
    exit /b 1
)

if "%~2"=="" (
    echo Error: ABI not provided.
    echo Usage: build_script.bat [BuildType] [ABI] [AndroidPlatform]
    exit /b 1
)

REM Check if the provided build type is valid
if /i not "%~1"=="Debug" if /i not "%~1"=="Release" (
    echo Error: Invalid build type. Valid options are Debug or Release.
    exit /b 1
)

set "valid_abis=armeabi-v7a arm64-v8a x86 x86_64"
set "abi=%~2"

echo %valid_abis% | findstr /i /c:"%abi%" >nul
if errorlevel 1 (
    echo Error: Invalid ABI. Valid options are %valid_abis%.
    exit /b 1
)

REM Set the source directory, build directory, and other variables
set source_dir=.

set build_dir=build/%1_%2
set build_type=%1
set build_abi=%2
set android_platform=%3

REM Construct the build command using the provided parameters
set full_configure_command=cmake -S %source_dir% -B %build_dir% -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=%build_type% -DANDROID_PLATFORM=%android_platform% -DANDROID_ABI=%build_abi%

REM Display the constructed command (optional)
REM echo Running command: %full_configure_command%

echo:
echo Info: Starting Configuration %1 %2
echo:

call %full_configure_command%

if %errorlevel% neq 0 (
    echo Error: CMake failed with exit code %errorlevel%.
    exit /b %errorlevel%
)

REM Exit the script
exit /b 0