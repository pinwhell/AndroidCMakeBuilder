@echo off

set cfg_cmd=android-cmake-cfg %*

call %cfg_cmd%

if errorlevel 1 (
	exit /b 1
)

set build_cmd=android-cmake-build %1 %2

call %build_cmd%

exit /b %errorlevel%