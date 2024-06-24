@ECHO OFF
cls
taskkill /F /IM java.exe /T > NUL 2>&1
ECHO Java process terminated successfuly.
TIMEOUT /T 5
call menu.bat