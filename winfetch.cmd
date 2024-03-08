@echo off
chcp 65001 >nul
:main
for /f "tokens=2 delims==" %%a in ('wmic os get caption /value ^| findstr "=" ') do set OS=%%a
for /f "tokens=2 delims==" %%b in ('wmic cpu get name /value ^| findstr "=" ') do set CPU=%%b
for /f "tokens=2 delims==" %%c in ('wmic path win32_videocontroller get name /value ^| findstr "=" ') do set GPU=%%c
FOR /F %%d IN ('cmd /c ver') DO set shell=%%d
for /f "tokens=2 delims==" %%e in ('wmic csproduct get Vendor /value') do set host=%%e
set terminal=Windows Terminal
set kernel=Microsoft Standard
set colorused1=[40;30m██[40;31m██[40;32m██[40;33m██[40;34m██[40;35m██[40;36m██[40;37m██
set colorused2=[40;90m██[40;91m██[40;92m██[40;93m██[40;94m██[40;95m██[40;96m██[40;97m██
:: which theme to go to
:basicwindows
set terminaltheme=Windows 7 Custom
echo.
echo [40;91m                [40;92m            .oodMMMM   [40;37m         [40;96m%username%[40;37m@[40;96m%computername%[40;37m
echo [40;91m                [40;92m   .oodMMMMMMMMMMMMM   [40;37m    --------------------------------
echo [40;91m       ..oodMMM [40;92m MMMMMMMMMMMMMMMMMMM   [40;37m    [40;97mOS: [40;37m%OS%
echo [40;91m oodMMMMMMMMMMM [40;92m MMMMMMMMMMMMMMMMMMM   [40;37m    [40;97mHost: [40;37m%host%
echo [40;91m MMMMMMMMMMMMMM [40;92m MMMMMMMMMMMMMMMMMMM   [40;37m    [40;97mKernel: [40;37m%kernel% 
echo [40;91m MMMMMMMMMMMMMM [40;92m MMMMMMMMMMMMMMMMMMM   [40;37m    [40;97mShell: [40;37m%shell% CMD
echo [40;91m MMMMMMMMMMMMMM [40;92m MMMMMMMMMMMMMMMMMMM   [40;37m    [40;97mTerminal: [40;37m%terminal%
echo [40;91m MMMMMMMMMMMMMM [40;92m MMMMMMMMMMMMMMMMMMM   [40;37m    [40;97mTerminal Theme: [40;37m%terminaltheme%
echo [40;91m MMMMMMMMMMMMMM [40;92m MMMMMMMMMMMMMMMMMMM   [40;37m    [40;97mCPU: [40;37m%CPU%
echo [40;32m                                          [40;37m [40;97mGPU: [40;37m%GPU%                             
echo [40;94m MMMMMMMMMMMMMM [40;93m MMMMMMMMMMMMMMMMMMM   [40;37m    
echo [40;94m MMMMMMMMMMMMMM [40;93m MMMMMMMMMMMMMMMMMMM   [40;37m    %colorused1%
echo [40;94m MMMMMMMMMMMMMM [40;93m MMMMMMMMMMMMMMMMMMM   [40;37m    %colorused2%
echo [40;94m MMMMMMMMMMMMMM [40;93m MMMMMMMMMMMMMMMMMMM   [40;37m
echo [40;94m MMMMMMMMMMMMMM [40;93m MMMMMMMMMMMMMMMMMMM   [40;37m
echo [40;94m    `^^^^^^MMMMMMM [40;93m MMMMMMMMMMMMMMMMMMM
echo [40;94m        ````^^^^ [40;93m   ^^MMMMMMMMMMMMMMMMM
echo [40;94m                [40;93m        ````^^^^^^^^^MMMM[40;37m
