@echo off
cd /d "%~dp0"
pnputil /add-driver PTUpdateFlashExtension.inf /install
pnputil /add-driver PTUpdateFlashDriver.inf /install
if %errorlevel% EQU 0 goto okay
echo INSTALL FAILED!
echo Error code : %errorlevel%
pause
goto err
:okay
echo INSTALL SUCCESS!
:err