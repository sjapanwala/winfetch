@echo off
chcp 65001>nul
:: -- import colors
set brightred=[40;91m
set brightyellow=[40;93m
set brightgreen=[40;92m
set brightblue=[40;94m
set brightpurple=[40;95m
set brightcyan=[40;96m
set brightwhite=[40;97m
set darkred=[40;31m
set darkyellow=[40;33m
set darkgreen=[40;32m
set darkblue=[40;34m
set darkpurple=[40;35m
set darkcyan=[40;36m
set white=[40;37m
:: --
:: -- information variables
for /f "tokens=2 delims==" %%a in ('wmic os get caption /value ^| findstr "=" ') do set OS=%%a
for /f "tokens=2 delims==" %%b in ('wmic cpu get name /value ^| findstr "=" ') do set CPU=%%b
for /f "tokens=2 delims==" %%c in ('wmic path win32_videocontroller get name /value ^| findstr "=" ') do set GPU=%%c
FOR /F %%d IN ('cmd /c ver') DO set shell=%%d
for /f "tokens=2 delims==" %%e in ('wmic csproduct get name /value') do set host=%%e
for /f "tokens=2 delims==" %%f in ('wmic path win32_videocontroller get name /value ^| findstr "=" ') do set GPU=%%f
set terminal=Windows Terminal
set kernel=Windows NT Kernal [Hybrid]
set colorused1=[40;30m●[40;31m●[40;32m●[40;33m●[40;34m●[40;35m●[40;36m●[40;37m●
set colorused2=[40;90m●[40;91m●[40;92m●[40;93m●[40;94m●[40;95m●[40;96m●[40;97m●
if "%1"=="@help" goto helpscreen
if "%1"=="@win11" displaywins11
if "%1"=="@plant" goto plantfile
goto displaywins7

:: display screens

:displaywins7
echo.
echo                             %brightpurple%%username%%white%@%brightpurple%%computername%
echo                   ┌────────────────────────────────────────┐
echo %brightred%┌─────┐%brightgreen%┌─────┐      %brightpurple%OS: %brightwhite%%OS%   
echo %brightred%│     │%brightgreen%│     │      %brightpurple%Host: %brightwhite%%host%
echo %brightred%│     │%brightgreen%│     │      %brightpurple%Kernel: %brightwhite%%kernel%
echo %brightred%└─────┘%brightgreen%└─────┘      %brightpurple%Terminal: %brightwhite%%terminal%
echo %brightblue%┌─────┐%brightyellow%┌─────┐      %brightpurple%CPU: %brightwhite%%CPU%
echo %brightblue%│     │%brightyellow%│     │      %brightpurple%GPU: %brightwhite%%GPU%
echo %brightblue%│     │%brightyellow%│     │ 
echo %brightblue%└─────┘%brightyellow%└─────┘               %white%[%colorused1%%white%] %white%[%colorused2%%white%]
echo                   %brightpurple%└────────────────────────────────────────┘%white%
echo.
echo.
goto end_prog

:displaywin11
echo.
echo                             %brightpurple%%username%%white%@%brightpurple%%computername%
echo                   ┌────────────────────────────────────────┐
echo %brightblue%┌─────┐┌─────┐      %brightpurple%OS: %brightwhite%%OS%   
echo %brightblue%│     ││     │      %brightpurple%Host: %brightwhite%%host%
echo %brightblue%│     ││     │      %brightpurple%Kernel: %brightwhite%%kernel%
echo %brightblue%└─────┘└─────┘      %brightpurple%Terminal: %brightwhite%%terminal%
echo %brightblue%┌─────┐┌─────┐      %brightpurple%CPU: %brightwhite%%CPU%
echo %brightblue%│     ││     │      %brightpurple%GPU: %brightwhite%%GPU%
echo %brightblue%│     ││     │
echo %brightblue%└─────┘└─────┘               %white%[%colorused1%%white%] %white%[%colorused2%%white%]
echo                   %brightpurple%└────────────────────────────────────────┘%white%
echo.
echo.
goto end_prog

:plantfile

move "winfetch.cmd" C:\Users\%username%

:helpscreen
echo.
echo Welcome To Winfetch!
echo ────────────────────────────────────────
echo Version [%brightgreen%0.1%white%]
echo ────────────────────────────────────────
echo Args,
echo "winfetch @help"  → Shows This Menu
echo "winfetch @win11" → Colors The Symbol Blue
echo "winfetch @updt"  → Updates The Menu
echo "winfetch @plant" → Plants File Into Root Dir
echo ────────────────────────────────────────
echo What Is Winfetch?
echo - A clone Of Neofetch, a terminal command that 
echo displays system information.
echo.
goto end_prog

:end_prog
