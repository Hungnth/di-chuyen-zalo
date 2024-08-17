@echo off
title Move Zalo Folders

:::: Run as administrator, AveYo: ps\vbs version
1>nul 2>nul fltmc || (
    set "_=call "%~dpfx0" %*" & powershell -nop -c start cmd -args '/d/x/r',$env:_ -verb runas || (
    >"%temp%\Elevate.vbs" echo CreateObject^("Shell.Application"^).ShellExecute "%~dpfx0", "%*" , "", "runas", 1
    >nul "%temp%\Elevate.vbs" & del /q "%temp%\Elevate.vbs" )
    exit)

mklink /j "%localappdata%\ZaloPC" "D:\Zalo\ZaloPC"
mklink /j "%appdata%\ZaloData" "D:\Zalo\ZaloApp"
mklink /j "%userprofile%\Documents\Zalo Received Files" "D:\Zalo\Zalo Received Files"

exit