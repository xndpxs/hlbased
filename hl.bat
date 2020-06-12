@echo off

START C:\Res\Qres.exe /x:1024 /y:768 /c:32 /r:240

tasklist /FI "IMAGENAME eq hl2.exe" 2>NUL | find /I /N "hl2.exe">NUL
if "%ERRORLEVEL%"=="1" START steam://rungameid/440
timeout 3 >NUL
:whilecsgo
timeout 3 >NUL
tasklist /FI "IMAGENAME eq hl2.exe" 2>NUL | find /I /N "hl2.exe">NUL
if "%ERRORLEVEL%"=="0" goto :whilecsgo

START C:\res\Qres.exe /x:1920 /y:1080 /c:32 /r:240

exit