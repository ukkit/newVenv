@echo off
setlocal enabledelayedexpansion

set "OLD_PATH=%CD%"

:: Prompt for virtual environment name with default 'venv'
echo ------------------------
echo Virtual Environment Name
echo ------------------------
echo Select the name of your virtual environment. Using the default 'venv' is fine.
set VENV_NAME=venv
set /p VENV_NAME="Enter the name for your virtual environment (Press Enter for default 'venv'): "
if "!VENV_NAME!"=="" set VENV_NAME=venv

:: create new directory by name of virtual environment
mkdir %VENV_NAME%

:: move into new vitual environment
cd %VENV_NAME%
set "NEW_PATH=%CD%"

:: copy venv_vreate.bat script into virtual environment
copy %OLD_PATH%\venv_create.bat %NEW_PATH%
cd %NEW_PATH%

:: execute venv_vreate.bat script to create new venv
venv_create %VENV_NAME%
