@ECHO OFF

:menu
cls

echo.
echo --{ Minecraft Server Manager }--
echo.

echo 1. Start Minecraft Server
if exist %choice%\fabric.jar (
  echo 2. Restart Playit.gg
) else (
  echo 2. Restart Playit.gg (unable)
)
echo 3. Stop Java Processes
echo 4. Reset Minecraft World (WARNING: Deletes existing world!)
echo 5. Exit
echo.
echo 6. Configuration
echo.

set /p "choice=" (Enter your choice (1-6): 

if "%choice%"=="" (
  goto invalid_choice
)

if "%choice%"=="1"(
  call start.bat
)

if "%choice%"=="2"(
  if exist C:\"Program Files"\playit_gg\bin\playit.exe (
    call restart_playit.bat
  )
)

if "%choice%"=="3"(
  call stop_java.bat
)

if "%choice%"=="4"(
  call reset_world.bat
)

if "%choice%"=="5"(
  exit
)

if "%choice%"=="6"(
  call config.bat
)

:invalid_choice
cls
echo Invalid Choice. Returning to menu.
timeout /t 2 /nobreak >nul
goto menu
