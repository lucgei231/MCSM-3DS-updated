@echo off
setlocal
cd /d "%~dp0"

set "DEVKITPRO=E:\devkitpro"
set "DEVKITARM=%DEVKITPRO%\devkitARM"
set "PATH=%DEVKITPRO%\msys2\usr\bin;%DEVKITARM%\bin;%DEVKITPRO%\portlibs\3ds\bin;%DEVKITPRO%\tools\bin;%DEVKITPRO%\tools\makerom;%PATH%"

where make >nul 2>&1
if errorlevel 1 (
  echo Error: devkitPro make was not found under %DEVKITPRO%.
  exit /b 1
)

where makerom >nul 2>&1
if errorlevel 1 (
  echo Error: makerom was not found under %DEVKITPRO%\tools.
  exit /b 1
)

where 3dstool >nul 2>&1
if errorlevel 1 (
  echo Error: 3dstool was not found. Install 3dstool into %DEVKITPRO%\tools\bin.
  exit /b 1
)

set "BUILD_DRIVE="
for %%D in (Z Y X W V U T S R Q P O N M L K J I H G F) do (
  if not defined BUILD_DRIVE if not exist %%D:\ set "BUILD_DRIVE=%%D:"
)
if not defined BUILD_DRIVE (
  echo Error: no unused drive letter is available for building from this folder path.
  exit /b 1
)

subst %BUILD_DRIVE% "%~dp0"
if errorlevel 1 (
  echo Error: could not create a temporary drive mapping.
  exit /b 1
)

pushd %BUILD_DRIVE%\
make TARGET=mcsm-3ds cia
set "BUILD_RESULT=%ERRORLEVEL%"
popd
subst %BUILD_DRIVE% /d
if not "%BUILD_RESULT%"=="0" exit /b %BUILD_RESULT%

echo Built %CD%\mcsm-3ds.cia
