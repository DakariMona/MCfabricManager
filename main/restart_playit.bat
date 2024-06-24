@ECHO OFF
cls
if exist C:\"Program Files"\playit_gg\bin\playit.exe (
  ECHO Restarting Playit.gg.
  taskkill /F /IM playit.exe /T > NUL 2>&1
  ECHO Stop Playit.gg sucessfuly. Starting Playit.gg.
  start C:\"Program Files"\playit_gg\bin\playit.exe
) else (
  echo No Playit.gg found in .
)
TIMEOUT /T 5
call menu.bat
