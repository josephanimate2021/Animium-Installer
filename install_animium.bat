:: Animium Installer
:: Author: joseph the animator#2292
:: License: MIT
title Animium Installer [Initializing...]

::::::::::::::::::::
:: Initialization ::
::::::::::::::::::::

:: Stop commands from spamming stuff, cleans up the screen
@echo off && cls

:: Lets variables work or something idk im not a nerd
SETLOCAL ENABLEDELAYEDEXPANSION

:: Make sure we're starting in the correct folder, and that it worked (otherwise things would go horribly wrong)
pushd "%~dp0"

:: Check *again* because it seems like sometimes it doesn't go into dp0 the first time???
pushd "%~dp0"

:::::::::::::::::::::::
:: Animium Installer ::
:::::::::::::::::::::::

title Animium Installer
:cls
cls

echo Animium Installer
echo Project led by Kia. 
echo Installer is created by Joseph Animate 2022.
echo:
echo Enter 1 to install Animium
echo Enter 0 to close the installer
:wrapperidle
echo:

:::::::::::::
:: Choices ::
:::::::::::::

set /p CHOICE=Choice:
if "!choice!"=="0" goto exit
if "!choice!"=="1" goto download
echo Time to choose. && goto wrapperidle

:download
cls
echo Cloning repository from GitHub...
if exist .git (
cd %USERPROFILE%\Downloads
:: the portable git does not work for some people. So this should help a little. The user needs to have git installed first.
if not exist Animium-Installer\PortableGit\bin\git.exe (
git clone https://github.com/KiaWeb/Animium.git
) else (
call Animium-Installer\PortableGit\bin\git.exe clone https://github.com/KiaWeb/Animium.git
)
) else (
cd %USERPROFILE%\Downloads
:: the portable git does not work for some people. So this should help a little. The user needs to have git installed first.
if not exist Animium-Installer-main\Animium-Installer-main\PortableGit\bin\git.exe (
git clone https://github.com/KiaWeb/Animium.git
) else (
call Animium-Installer-main\Animium-Installer-main\PortableGit\bin\git.exe clone https://github.com/KiaWeb/Animium.git
)
)
echo Installing some npm packages...
cd Animium
npm install
echo Animium Has Been Installed
pause
goto cls

:exit
echo the Animium installer has been closed.
pause & exit
