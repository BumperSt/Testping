@ECHO off
set loopcount=64
set C= 0
set valor= 0



:loop
ECHO ======================== Teste De Ping League Of Legends =============================
ECHO TesteDePing By: Gabriel Mesquita
ECHO ======================================================================================
CALL:lol 8.23.24.100

set test= %ms%
set test=%test:~0,4%
set /a valor = %C%+%test%+%valor%

ECHO (BR) Brasil:                      %ms% %valor% 
ECHO ======================================================================================
set /a loopcount=loopcount-1
if %loopcount%==0 goto saida
goto loop

:lol
SET ms=Error
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %1 ^| FIND "ms"') DO SET ms=%%i
GOTO:EOF

:saida
ECHO ================================MEDIA======================================
Set /a m=%valor%/64
ECHO                            Media do ping %m%
ECHO ===========================================================================
pause



