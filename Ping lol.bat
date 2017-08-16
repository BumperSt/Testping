@ECHO OFF
REM BFCPEOPTIONSTART
REM Advanced BAT to EXE Converter www.BatToExeConverter.com
REM BFCPEEXE=
REM BFCPEICON=
REM BFCPEICONINDEX=-1
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=1
REM BFCPEADMINEXE=0
REM BFCPEINVISEXE=0
REM BFCPEVERINCLUDE=0
REM BFCPEVERVERSION=1.0.0.0
REM BFCPEVERPRODUCT=Product Name
REM BFCPEVERDESC=Product Description
REM BFCPEVERCOMPANY=Your Company
REM BFCPEVERCOPYRIGHT=Copyright Info
REM BFCPEOPTIONEND
@ECHO ON
@ECHO off
set loopcount=1
set pen= 0
set /a cu=%pen%+%ms%

:loop
ECHO ======================== Ping Test League Of Legends =============================
ECHO PingTest By: Gabriel Mesquita
ECHO ==================================
CALL:lol 8.23.24.100
ECHO (BR) Brasil:                      %ms%  %cu%
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



