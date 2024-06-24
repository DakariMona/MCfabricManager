@ECHO OFF
cls
set /p line1=<data.txt
rmdir /s %line1%world\
cls
TIMEOUT /T 5
call menu.bat
