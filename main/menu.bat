@ECHO OFF

:menu
cls

echo.
echo --{ Minecraft Server Manager }--
echo.

echo 1. Start Minecraft Server
echo 2. Restart Playit.gg
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

if /i "%choice%" LEQ 6 & /i "%choice%" GEQ 1 (
  call "%choice%"%.bat
  goto menu
) else (
  goto invalid_choice
)

:invalid_choice
cls
echo Invalid Choice. Returning to menu.
timeout /t 2 /nobreak >nul
goto menu
