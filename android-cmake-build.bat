@echo off

set build_dir=build/%1_%2
set build_cmd=cmake --build %build_dir%

echo:
echo Info: Starting Build %1 %2
echo:

call %build_cmd%

exit /b %errorlevel%