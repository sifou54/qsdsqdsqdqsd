
REM Made by religion#3993

REM Save as religionv1.bat

@echo off
Title religion bloom reducer v.1.0.6
Mode con: cols=50 lines=25
color c
:Main
cls
echo.
echo welcome to this bloom reducer made by religion#3993
echo Please Login or Make an Account Below.
echo Credits to religion#3993
echo.
echo [1] Create account
echo [2] Login
echo.
set /p choice=Please choose a number: 
if %choice% == 1 goto createacc
if %choice% == 2 goto login
echo.
echo Invalid choice! Try again.
echo.
pause
goto Main


:createacc
cls
echo.
echo Create your account!
echo.
set /p username=Create your username: 
set /p password=Create your password: 
set /p name=Create your display name: 
echo.
echo Saving your informations...
echo.
timeout /t 2 >nul


REM this will save the information to notepad, remove qoutes!
echo set user=%username%>>"%username%".bat
echo set pass=%password%>>"%username%".bat
echo set name=%name%>>"%username%".bat
echo.
echo Account saved!
echo.
pause
goto Main


:login
cls
echo.
echo You are about to login.
echo.
set /p loguser=Enter your username: 
echo.
echo Please wait while searching...
timeout /t 2 >nul
if exist "%loguser%".bat goto typepass
echo.
echo Please try again, we are having trouble finding your acc.
pause
goto login
:typepass
call "%loguser%.bat"
set /p logpass=Enter your password: 
if "%logpass%"=="%pass%" goto success
echo.
echo Your password is incorrect. Type it again.
pause
goto typepass

:success
cls
echo.
echo Success! You have logged in! %name%
pause
cls
echo Injecting Path=FortniteClient-Win64-Shipping_BE. Please wait. 
echo.
echo Injecting... 
TIMEOUT /T 5 /NOBREAK
echo.
echo Press Enter To Inject
pause >nul
echo. 
@echo off
echo All credits belong to religion#3993
echo Failure to comply with TOS will result in a HWID Ban.
taskkill F FI IMAGENAME eq SystemSettings.exe
@echo
net stop wuauserv
net stop UsoSvc
@echo
echo Do Not Connect To Any Windows Update Locations
reg add HKLMSOFTWAREPoliciesMicrosoftWindowsWindowsUpdate v DoNotConnectToWindowsUpdateInternetLocations t REG_DWORD d 1 f
@echo
echo Remove Access To Use All Windows Update Features
reg add HKLMSOFTWAREPoliciesMicrosoftWindowsWindowsUpdate v SetDisableUXWUAccess t REG_DWORD d 1 f
@echo
echo Disable Automatic Updates
reg add HKLMSOFTWAREPoliciesMicrosoftWindowsWindowsUpdateAU v NoAutoUpdate t REG_DWORD d 1 f
@echo
echo Do Not Include Drivers With Windows Update
reg add HKLMSOFTWAREPoliciesMicrosoftWindowsWindowsUpdate v ExcludeWUDriversInQualityUpdate t REG_DWORD d 1 f
@echo
gpupdate force
@echo
echo Deleting Windows Update Files
rd s q CWindowsSoftwareDistribution
md CWindowsSoftwareDistribution
@echo
net start wuauserv
net start UsoSvc
echo religion has been injected! Please run your game now.
echo Creation Credits to religion#3993
echo Enjoy!
pause