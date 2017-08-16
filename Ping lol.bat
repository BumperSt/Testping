@ECHO off
set loopcount=32
set pen= 0

:loop
ECHO ======================== Ping Test League Of Legends =============================
ECHO PingTest By: Gabriel Mesquita
ECHO ==================================
CALL:lol 8.23.24.100
ECHO (BR) Brasil:                      %ms%  
ECHO ================================== 
set /a loopcount=loopcount-1
if %loopcount%==0 goto saida
goto loop

:lol
SET ms=Error
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %1 ^| FIND "ms"') DO SET ms=%%i
GOTO:EOF

:saida
ECHO ================================MEDIA===================================
ECHO %cu%
pause



