@ECHO OFF

setlocal enabledelayedexpansion

:check_update

echo.  ; Add an empty line for better formatting

set /p "choice=Update to Latest Version? (Y/N): "  ; Clearer prompt message

if /i "%choice%" == "Y" (
  del version.txt  ; Delete existing version.txt before download
  curl -o version.txt -JL https://raw.githubusercontent.com/DakariMona/MCfabricManager/main/version.txt
  echo Downloaded latest version.txt
)

if exist version.txt (
  echo Found installation files.
  set /p "version=< version.txt"
  echo Using version: !version!

  for /f "skip=1 delims=" %%a in ('type version.txt') do (
    set /a "line+=1"
    if !line! lss 4 (
      set "var!line!=%%a"
    )
  )

  echo Downloading Fabric version !version! ...
  echo Using loader: !var1! and installer: !var2! ...
  goto download
) else (
  echo No installation file found. Exiting.
  exit /b 1
)

:download
curl -o fabric.jar -JL "https://meta.fabricmc.net/v2/versions/loader/%version%/%var1%/%var2%/server/jar"

pause
if %errorlevel% == 0 (
  echo Download successful!
  call start.bat
) else (
  echo Error: Download failed. Check internet connection or version information.
)

endlocal