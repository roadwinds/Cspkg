@echo off
cd %~dp0
set PATH=C:\build\bin;C:\mingw64\bin;%PATH%
set CS_IMPORT_PATH=C:\build\imports
set CS_DEV_PATH=C:\build
cd ..\..
mkdir build
cd build
cmake -G "MinGW Makefiles" ..
mingw32-make -j8
cd ..
cspkg build https://github.com/roadwinds/Cspkg/releases/download/windows-schedule/ . --flat