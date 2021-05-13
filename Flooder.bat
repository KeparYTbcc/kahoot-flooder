:begin
@echo off
title Kahoot Floder (by Wcsdl)
color a
cls
if exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Node.js" goto go
if not exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Node.js" goto dep
:oops
cls
echo Dependencie not found!
echo Wanna install it?
set /p web= ( Y / N ) : 
if "%web%"=="Y" goto dep
if "%web%"=="N" goto begin
if "%web%"=="y" goto dep
if "%web%"=="n" goto begin
goto no1

:dep
start https://nodejs.org/dist/v14.15.0/node-v14.15.0-x64.msi
cls
echo Complete the setup
echo and restart the Flooder
pause
exit

:go
cls
del Floody.js
del install.bat
echo msg * close the new cmd tab when the install done >> install.bat
echo npm i kahoot-spam >> install.bat
echo exit >> install.bat
start install.bat
echo const KahootSpam = require('kahoot-spam') >> Floody.js
echo let api = KahootSpam >> Floody.js
cls
set /p code= "Enter Kahoot code :" : 
::
set /p web= "Bot names (enter less then 10 letter to better result) :" : 
::
cls
set /p weby= "How much bots (enter less then 50 for better result) :" : 
cls
echo api.spam(%code%, '%web%', %weby%) >> Floody.js
cls 
echo Please Check Info:
echo.
echo Kahoot Code: %code%
echo Bot names: %web%
echo Bot amount: %weby%
echo.
set /p web= "Do info are correct (Y/N)" : 
if "%web%"=="Y" goto start22
if "%web%"=="N" goto begin
if "%web%"=="y" goto start22
if "%web%"=="n" goto begin

:start22
cls
node Floody.js







