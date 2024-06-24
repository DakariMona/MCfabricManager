@echo off
cls

set /p "choice=Your Server.jar directory (Example: C:\Users\%username%\Downloads\ServerMC) Enter blank to cancel : "

echo Validating directory...

echo Checking for Server files in %choice%...

if exist %choice%\fabric.jar (
  echo Found Server files in %choice%.
  echo %choice% > data.txt
  echo %~dp0 >> data.txt  
  start notepad "launch.bat"
  echo Success! Saved config.
) else (
  echo No Server files found in %choice%.
)

TIMEOUT /T 10
call menu.bat