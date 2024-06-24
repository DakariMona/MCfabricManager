@ECHO OFF

echo %~dp0 > main\data.txt
echo %~dp0main\ >> main\data.txt

if exist fabric.jar (
  cd main
  call menu.bat
) else (
  echo Server files not found. Installing server.
  pause
  call setup.bat
)
