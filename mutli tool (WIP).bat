echo off
title kaos's multi tool
color 2
cls
echo hi there %username% this is a WIP still so be mindful of any bugs and enjoy 
pause
goto :kaos

:kaos
title kaos's multi tool
color 2
cls
echo [1] nerd shit
echo [2] math stuff
echo [3] random stuff
echo [4] exit
echo.
set /p Q=(1/2/3/4)
color 4
pause
color 9

if %Q% ==1 goto :nerd
if %Q% ==1 goto :nerd
if %Q% ==1 goto :nerd

if %Q% ==2 goto :math
if %Q% ==2 goto :math
if %Q% ==2 goto :math

if %Q% ==3 goto :misc
if %Q% ==3 goto :misc
if %Q% ==3 goto :misc

if %Q% ==4 goto :exit
if %Q% ==4 goto :exit
if %Q% ==4 goto :exit

:exit
pause
cls
exit


:nerd
echo off
title nerd shit
color 2
cls
echo [1] ip data                         			
echo [2] system data
echo [3] ip pinger and lookup
echo [4] command prompt
echo [5] view all active connections to your pc
echo [6] back to home screen
echo. 
set /p Q=(1/2/3/4/5/6)
pause

if %Q% ==1 goto :data
if %Q% ==1 goto :data
if %Q% ==1 goto :data

if %Q% ==2 goto :system
if %Q% ==2 goto :system
if %Q% ==2 goto :system

if %Q% ==3 goto :ovh
if %Q% ==3 goto :ovh
if %Q% ==3 goto :ovh

if %Q% ==4 goto :cmd
if %Q% ==4 goto :cmd
if %Q% ==4 goto :cmd

if %Q% ==5 goto :botnet
if %Q% ==5 goto :botnet
if %Q% ==5 goto :botnet

if %Q% ==6 goto :kaos
if %Q% ==6 goto :kaos
if %Q% ==6 goto :kaos


:data

ipconfig /all
pause
cls
goto :nerd


:system
cls
systeminfo
pause
cls
goto :nerd

:ovh
cls
echo.
echo.
:hub
echo want to go back?
set /p Q=(YES/NO)
color 4
pause
color 9

if %Q% ==yes goto :kaos
if %Q% ==YES goto :kaos
if %Q% ==yes goto :kaos

if %Q% ==no goto :start2
if %Q% ==NO goto :start2
if %Q% ==no :start2
:start2
cls
echo type hi to use the lookup tool
set /p var=Enter IP~
if %var%==hi goto iplook
title Preparing To ping ~%var%~ 
echo ================================
echo Pinging Target IP "%var%"
echo ================================
:d
echo ==================================
echo hi
echo ==================================
:x
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color a
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color B
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color d
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color C
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color 1
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color e
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color a
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color B
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color d
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color C
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color 1
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color e
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color a
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color B
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color d
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color C
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color 1
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color e
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color a
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color B
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color d
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color C
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color 1
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color e
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color 1
PING -n 1 %var% | FIND "TTL="
IF ERRORLEVEL 1 goto f
color e
cls
GoTo d
:f
color 40     
echo          ___________          
echo   ____  / __/ __/ (_)___  ___ 
echo  / __ \/ /_/ /_/ / / __ \/ _ \
echo / /_/ / __/ __/ / / / / /  __/
echo \____/_/ /_/ /_/_/_/ /_/\___/ 
color 04
goto x
:iplook
@echo off
title kaos's IP Lookup
color 04
setlocal ENABLEDELAYEDEXPANSION
set webclient=webclient
if exist "%temp%\%webclient%.vbs" del "%temp%\%webclient%.vbs" /f /q /s >nul
if exist "%temp%\response.txt" del "%temp%\response.txt" /f /q /s >nul
:menu
cls
echo 1.)Check Your IP
echo 2.)Search up an IP
goto action
:input
echo.
echo Please enter a valid input option.
echo.
:action
echo.
set /p action=kaos'S IP TOOL: 
if '%action%'=='1' echo sUrl = "http://ipinfo.io/json" > %temp%\%webclient%.vbs & goto localip
if '%action%'=='2' goto iplookup
goto input
:iplookup
cls
echo.
echo                          Type an IP to lookup
echo.
set ip=127.0.0.1
set /p ip=IP: 
echo sUrl = "http://ipinfo.io/%ip%/json" > %temp%\%webclient%.vbs
:localip
cls
echo set oHTTP = CreateObject("MSXML2.ServerXMLHTTP.6.0") >> %temp%\%webclient%.vbs
echo oHTTP.open "GET", sUrl,false >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Type", "application/x-www-form-urlencoded" >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Length", Len(sRequest) >> %temp%\%webclient%.vbs
echo oHTTP.send sRequest >> %temp%\%webclient%.vbs
echo HTTPGET = oHTTP.responseText >> %temp%\%webclient%.vbs
echo strDirectory = "%temp%\response.txt" >> %temp%\%webclient%.vbs
echo set objFSO = CreateObject("Scripting.FileSystemObject") >> %temp%\%webclient%.vbs
echo set objFile = objFSO.CreateTextFile(strDirectory) >> %temp%\%webclient%.vbs
echo objFile.Write(HTTPGET) >> %temp%\%webclient%.vbs
echo objFile.Close >> %temp%\%webclient%.vbs
echo Wscript.Quit >> %temp%\%webclient%.vbs
start %temp%\%webclient%.vbs
set /a requests=0
echo.
rem echo Waiting for API response. . .
echo  Looking up IP Address. . .
:checkresponseexists
set /a requests=%requests% + 1
if %requests% gtr 7 goto failed
IF EXIST "%temp%\response.txt" (
goto response_exist
) ELSE (
ping 127.0.0.1 -n 2 -w 1000 >nul
goto checkresponseexists
)
:failed
taskkill /f /im wscript.exe >nul
del "%temp%\%webclient%.vbs" /f /q /s >nul
echo.
echo Did not receive a response from the API.
echo.
pause
goto menu
:response_exist
cls
echo.
echo Information for "%IP%"
for /f "delims= 	" %%i in ('findstr /i "," %temp%\response.txt') do (
	set data=%%i
	set data=!data:,=!
	set data=!data:""=Not Listed!
	set data=!data:"=!
	set data=!data:hostname:=Hostname: !
        set data=!data:country:=Country: !
	set data=!data:region:=State or Provinence: !
	set data=!data:city:=City or Town: !		                        	                        
	set data=!data:org:=Internet Service Provider: !		        		                	                	                        
	set data=!data:postal:=Postal Code: !	                        
	set data=!data:timezone:=Timezone: !	                        
	echo !data!
)
echo.
del "%temp%\%webclient%.vbs" /f /q /s >nul
del "%temp%\response.txt" /f /q /s >nul
set /p erf=Press enter to ping your target!
goto :start2
if '%ip%'=='' goto menu
goto iplookup



:cmd
color 0a
cls
:cmd
set /p "cmd=%CD%>"
%cmd%
goto cmd



:botnet
cls
@echo off
title active connections
color 2
netstat -a
pause
goto :kaos




:math
echo off
title math
color 2
cls
echo [1] calculate pi 
echo [2] calc
echo [3] percentage calc
echo [4] back to home screen
echo.
set /p Q=(1/2/3/4)
color 4
pause
color 9

if %Q% ==1 goto :Pie
if %Q% ==1 goto :Pie
if %Q% ==1 goto :Pie

if %Q% ==2 goto :algebra
if %Q% ==2 goto :algebra
if %Q% ==2 goto :algebra

if %Q% ==3 goto :calculator
if %Q% ==3 goto :calculator
if %Q% ==3 goto :calculator

if %Q% ==4 goto :kaos
if %Q% ==4 goto :kaos
if %Q% ==4 goto :kaos


:Pie
cls
@if defined talk (echo on) else (echo off)
setlocal EnableDelayedExpansion
echo.pi
set /a NumQuads = 30
set /a MaxQuadIndex = NumQuads - 1

echo.
echo.%time% - started
echo.

call :PiEngine 48 18 32 57 -20 239
call :PiEngine 16 5 -4 239
goto :EOF

:PiEngine
call :SetToInteger Pi 0
set Formula=
:PiTermLoop
if "%1" == "" (
call :Print pi
echo.
echo.!time! - finished !Formula!
echo.
goto :EOF
)
call :ArctanRecip PiTerm %2
set /a PiEngineFactor=%1
if !PiEngineFactor! lss 0 (
set /a PiEngineFactor *= -1
set Formula=!Formula!
call :MultiplyByInteger PiTerm !PiEngineFactor!
call :Subtract Pi PiTerm
set Operator=-
) else (
call :MultiplyByInteger PiTerm %1
call :Add Pi PiTerm
set Operator=+
)
if defined Formula (
set Formula=!Formula! !Operator! !PiEngineFactor!*arctan^(1/%2^)
) else (
set Formula=pi = %1*arctan^(1/%2^)
)
shift
shift
goto PiTermLoop

:SetToInteger
for /L %%i in (0, 1, !MaxQuadIndex!) do (
set /a %1_%%i = 0
)
set /a %1_!MaxQuadIndex! = %2
goto :EOF

:Print
set PrintBuffer=x
REM Omit a couple of least significant quads, because they will have roundoff errors.
if defined PiDebug (
set /a PrintMinQuadIndex=0
) else (
set /a PrintMinQuadIndex=2
)
set /a PrintMaxQuadIndex = MaxQuadIndex - 1
for /L %%i in (!PrintMinQuadIndex!, 1, !PrintMaxQuadIndex!) do (
set PrintDigit=!%1_%%i!
if !PrintDigit! lss 1000 (
if !PrintDigit! lss 100 (
if !PrintDigit! lss 10 (
set PrintDigit=000!PrintDigit!
) else (
set PrintDigit=00!PrintDigit!
)
) else (
set PrintDigit=0!PrintDigit!
)
)
set PrintBuffer=!PrintDigit!!PrintBuffer!
)
set PrintBuffer=!%1_%MaxQuadIndex%!.!PrintBuffer:x=!
echo.%1 = !PrintBuffer!
goto :EOF

:DivideByInteger
if defined PiDebug echo.DivideByInteger %1 %2
set /a DBI_Carry = 0
for /L %%i in (!MaxQuadIndex!, -1, 0) do (
set /a DBI_Digit = DBI_Carry*10000 + %1_%%i
set /a DBI_Carry = DBI_Digit %% %2
set /a %1_%%i = DBI_Digit / %2
)
goto :EOF

:MultiplyByInteger
if defined PiDebug echo.MultiplyByInteger %1 %2
set /a MBI_Carry = 0
for /L %%i in (0, 1, !MaxQuadIndex!) do (
set /a MBI_Digit = %1_%%i * %2 + MBI_Carry
set /a %1_%%i = MBI_Digit %% 10000
set /a MBI_Carry = MBI_Digit / 10000
)
goto :EOF

:ArctanRecip
if defined PiDebug echo.ArctanRecip %1 %2
call :SetToInteger %1 1
call :DivideByInteger %1 %2
call :CopyValue AR_Recip %1
set /a AR_Toggle = -1
set /a AR_K = 3
:ArctanLoop
if defined PiDebug (
echo.
echo.ArctanRecip AR_K=!AR_K! ---------------------------------------------------------
)
call :DivideByInteger AR_Recip %2
call :DivideByInteger AR_Recip %2
call :CopyValue AR_Term AR_Recip
call :DivideByInteger AR_Term !AR_K!
call :CopyValue AR_PrevSum %1
if !AR_Toggle! lss 0 (
call :Subtract %1 AR_Term
) else (
call :Add %1 AR_Term
)
call :Compare AR_EqualFlag %1 AR_PrevSum
if !AR_EqualFlag! == true goto :EOF
set /a AR_K += 2
set /a AR_Toggle *= -1
goto ArctanLoop

:CopyValue
if defined PiDebug echo.CopyValue %1 %2
for /L %%i in (0, 1, !MaxQuadIndex!) do (
set /a %1_%%i = %2_%%i
)
goto :EOF

:Add
if defined PiDebug echo.Add %1 %2
if defined PiDebug call :Print %1
if defined PiDebug call :Print %2
set /a Add_Carry = 0
for /L %%i in (0, 1, !MaxQuadIndex!) do (
set /a Add_Digit = Add_Carry + %1_%%i + %2_%%i
set /a %1_%%i = Add_Digit %% 10000
set /a Add_Carry = Add_Digit / 10000
)
goto :EOF

:Subtract
if defined PiDebug echo.Subtract %1 %2
if defined PiDebug call :Print %1
if defined PiDebug call :Print %2
set /a Subtract_Borrow = 0
for /L %%i in (0, 1, !MaxQuadIndex!) do (
set /a Subtract_Digit = %1_%%i - %2_%%i - Subtract_Borrow
if !Subtract_Digit! lss 0 (
set /a Subtract_Digit += 10000
set /a Subtract_Borrow = 1
) else (
set /a Subtract_Borrow = 0
)
set /a %1_%%i = Subtract_Digit
)
goto :EOF

:Compare
if defined PiDebug echo.Compare %1 %2 %3
if defined PiDebug call :Print %2
if defined PiDebug call :Print %3
set /a Compare_Index = 0
set %1=true
:CompareLoop
if not !%2_%Compare_Index%! == !%3_%Compare_Index%! (
if defined PiDebug echo.!%2_%Compare_Index%! neq !%3_%Compare_Index%!
set %1=false
goto :EOF
)
set /a Compare_Index += 1
if !Compare_Index! gtr !MaxQuadIndex! (
if defined PiDebug echo.Compare equal
goto :EOF
)
goto CompareLoop

REM $Log: pi.bat,v $
REM Revision 1.2 2007/09/06 21:49:15 Don.Cross
REM Added time stamps and display of formula.
REM
REM Revision 1.1 2007/09/06 21:12:36 Don.Cross
REM Batch file for calculating pi
REM
goto :math


:algebra
start https://www.mathway.com/Algebra
goto :math


:calculator
start https://percentagecalculator.net/
goto :math



:misc
echo off
title misc
color 2
cls
echo [1] circle animation
echo [2] matrix
echo [3] password gen
echo [4] bouncing ball animation
echo [5] tic tac toe
echo [6] back to home screen
echo.
set /p Q=(1/2/3/4/5/6)
color 4
pause
color 9

if %Q% ==1 goto :circ
if %Q% ==1 goto :circ
if %Q% ==1 goto :circ

if %Q% ==2 goto :mat
if %Q% ==2 goto :mat
if %Q% ==2 goto :mat

if %Q% ==3 goto :pgen
if %Q% ==3 goto :pgen
if %Q% ==3 goto :pgen

if %Q% ==4 goto :ball
if %Q% ==4 goto :ball
if %Q% ==4 goto :ball

if %Q% ==5 goto :ttt
if %Q% ==5 goto :ttt
if %Q% ==5 goto :ttt

if %Q% ==6 goto :kaos
if %Q% ==6 goto :kaos
if %Q% ==6 goto :kaos




:circ
@echo off & setlocal & title Sphere 3D & set /a cols=62, lines=62 & goto :Init_system



  :: Use raster font 8x8. 

:Main

set /a ar=100, rt=0, ds=0, cx=cols/2, cz=4000, cY=lines/2

(
  set SIN=
  set _PLOT$_=
  set _$PLOT_=
  set _empty=
  set lines=
  set cols=

  for /L %%\ in (1000,-1,0) do (

   set /a "rt+=31416/60"
   
   if !ds! lss 1000 set /a ds+=10

   setlocal

   set /a "a=(15708-rt) %% 62832, c=(a>>31|1)*a"

   if !c! gtr 47124 (set /a "a=a-(a>>31|1)*62832, b=%SIN%, a=rt %% 62832, c=(a>>31|1)*a")  else (if !c! gtr 15708 (set /a "a=(a>>31|1)*31416-a, b=%SIN%, a=rt %% 62832, c=(a>>31|1)*a") else set /a "b=%SIN%, a=rt %% 62832, c=(a>>31|1)*a")
   if !c! gtr 47124 (set /a "a=a-(a>>31|1)*62832, a=%SIN%")  else (if !c! gtr 15708 (set /a "a=(a>>31|1)*31416-a, a=%SIN%") else set /a "a=%SIN%")

   for %%f in ("0 9999" "-5000 8661" "-8661 5000" "-9999 0" "-8661 -5000" "-5000 -8661" "0 -9999" "5000 -8661" "8661 -5000" "9999 0" "8661 5000" "5000 8661") do for /f "tokens=1,2" %%g in (%%f) do (

   for %%t in ("3827 9239" "7071 7071" "9239 3827" "9999 0" "9239 -3827" "7071 -7071" "3827 -9239") do for /f "tokens=1,2" %%u in (%%t) do (

     set /a "ax=ar*%%h/10000*%%u/10000, az=ar*%%g/10000*%%u/10000, ay=ar*%%v/10000, aax=(ax*b/10000-(ay*a/10000+az*b/10000)*a/10000)*b/10000-(ay*b/10000-az*a/10000)*a/10000, aay=(ax*b/10000-(ay*a/10000+az*b/10000)*a/10000)*a/10000+(ay*b/10000-az*a/10000)*b/10000, e=ax*a/10000+(ay*a/10000+az*b/10000)*b/10000, c=ds*aax/(e-cz)+cx, d=ds*aay/(e-cz)+cy"   

     if not defined L!d! set L!d!=%_empty%
   
     if !e! lss 0 (%_$PLOT_% !c! !d! 1 %_PLOT$_%) else %_$PLOT_% !c! !d! 4 %_PLOT$_%

    )   
   )

   if not "!OT!"=="!time:~-1!" (
     cls & (For /L %%l in (1,1,%lines%) do if not defined L%%l (echo() else echo( !L%%l!)>CON
     if "!OT!"=="0" title Sphere 3D [%%\]
     endlocal
     set OT=!time:~-1!
   ) else endlocal

  )
)
goto :eof

:Init_system

  setlocal DisableDelayedExpansion

  set /a cc=cols+2, ll=lines+2
(  
  mode %cc%,%ll% & cls
  for /F "Tokens=1 delims==" %%v in ('set') do set "%%v="
  set /a cols=%cols%, lines=%lines%
)
  set "_$PLOT_=For /F usebackq^ tokens^=1-3 %%x in ('"
  set "_PLOT$_=') do set /a f=%%x+1 & For %%w in (!f!) do set L%%y=!L%%y:~0,%%x!!g:~%%z,1!!L%%y:~%%w!"

  set "SIN=(a-a*a/1920*a/312500+a*a/1920*a/15625*a/15625*a/2560000-a*a/1875*a/15360*a/15625*a/15625*a/16000*a/44800000)"

  setlocal EnableDelayedExpansion

  For /L %%l in (1,1,%cols%) do set "_empty=!_empty! "

  set g= .±²@"

Goto :Main




:mat
@echo off
color 0a
mode con: cols=60 lines=70
title Matrix
set /a Ran=1
set /a Rand=%random%
set /a Positive=0
set /a one=1
set /a Positive1=%Positive%+%one%
set /a PositiveOne=0
cls

echo Do you want to start the Matrix?
echo.
set /p Q=(YES/NO): 
pause

if %Q% ==Yes goto :Matrix
if %Q% ==YES goto :Matrix
if %Q% ==yes goto :Matrix

if %Q% ==No goto :Exit
if %Q% ==NO goto :Exit
if %Q% ==no goto :Exit

:Exit
cls
exit

:Matrix

set /a rand1=%random% %% 16
set /a rand2=%random% %% 16
set HEX=ABCDEFGHJKLMNOPR
call set RAR=%%HEX:~%rand1%,1%%%%HEX:~%rand2%,1%%


set /a rand10=0
set /a rand20=%random% %% 15
set HEXX=123456789ABCDEF
call set RAR1=%%HEXX:~%rand20%,1%%


set /a Ram=%Ran%+%Rand%
set /a Ramd=%Ram%*2-%Rand%

title MATRIX%random%%RAR%%random%%RAR%%random%%RAR%%random%%RAR%%random%%random%%random%%random%%random%%random%%RAR%%RAR%%RAR%%RAR%%RAR%%RAR%%RAR%%random%%RAR%%random%%random%%random%%RAR%%random%%random%%random%

echo %Ramd%%RAR%%Ramd%%Ramd%%Ramd%%RAR%%Ramd%%RAR%%Ramd%%%RAR%Ramd%%Ramd%%RAR%%Ramd%%Ramd%%RAR%%RAR%%RAR%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%RAR%%Ramd%%RAR%%Ramd%%Ramd%%RAR%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%RAR%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%RAR%%Ramd%%Ramd%%RAR%%Ramd%%RAR%%Ramd%%RAR%%Ramd%%RAR%%RAR%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%RAR%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%RAR%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%RAR%%RAR%%RAR%%RAR%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%RAR%%Ramd%%Ramd%%RAR%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%RAR%%Ramd%%RAR%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%Ramd%%RAR%%Ramd%%Ramd%%RAR%%RAR%%Ramd%%Ramd%%Ramd%%Ramd%%RAR%%Ramd%%RAR%%Ramd%%Ramd%%Ramd%%RAR%%RAR%

:: ping localhost -n 1 >nul <--- Just specifies how many second it sould wait (in this case less that 1 second)
ping localhost -n 1.25 >nul

set /a Ran=%Ram%
set /a Rand=%random%

set /a Positive1=%PositiveOne%
set /a PositiveOne=%Positive1%+%one%

if %PositiveOne% == 10 goto :Feil
if not %PositiveOne% == 10 goto :Matrix

:Feil
color 0%RAR1%
set /a Positive=0
set /a one=1
set /a Positive1=%Positive%+%one%
set /a PositiveOne=0
goto :Matrix



:pgen
@echo off
:Start
cls
goto Start
:Start
title Password Generator
echo I will make you a new password.
echo Please write the password down somewhere in case you forget it.
echo ----------------------------------------­-----------------------
echo 1) 1 Random Password
echo 2) 5 Random Passwords
echo 3) 10 Random Passwords
echo Input your choice
set input=
set /p input= Choice:
if %input%==1 goto A if NOT goto Start2
if %input%==2 goto B if NOT goto Start2
if %input%==3 goto C if NOT goto Start2
:A
cls
echo Your password is %random%
echo Now choose what you want to do.
echo 1) Go back to the beginning
echo 2) Exit
set input=
set /p input= Choice:
if %input%==1 goto Start2 if NOT goto Start 2
if %input%==2 goto Exit if NOT goto Start 2
:Exit
exit
:B
cls
echo Your 5 passwords are %random%, %random%, %random%, %random%, %random%.
echo Now choose what you want to do.
echo 1) Go back to the beginning
echo 2) Exit
set input=
set /p input= Choice:
if %input%==1 goto Start2 if NOT goto Start 2
if %input%==2 goto Exit if NOT goto Start 2
:C
cls
echo Your 10 Passwords are %random%, %random%, %random%, %random%, %random%, %random%, %random%, %random%, %random%, %random%
echo Now choose what you want to do.
echo 1) Go back to the beginning
echo 2) Exit
set input=
set /p input= Choice:
if %input%==1 goto Start2 if NOT goto Start 2
if %input%==2 goto Exit if NOT goto Start 2



:ball
cls
@echo off
cls
title Bouncing Ball!
color 0a
echo.
echo -----------------------------------
echo Type Start to Make The Ball Bounce    
echo -----------------------------------
echo.
echo 
echo.
set /p input= Type Start -
if %input%==Start goto A


:A
echo -------------------
echo           *
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo           *
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo           *
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo           *
echo.
echo.
echo.
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo           *
echo.
echo.
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo           *
echo.
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo           *
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo.           
echo           *
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo.           
echo.           
echo           *
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo.           
echo.           
echo.           
echo           _
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo.           
echo.           
echo           *         
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo.           
echo           *           
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo           *           
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo           *       
echo.                    
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo           *           
echo.       
echo.                    
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo           *           
echo.         
echo.    
echo.                    
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo           *           
echo.           
echo.         
echo.    
echo.                    
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo           *          
echo.         
echo.           
echo.         
echo.    
echo.                    
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo           *
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo           *
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo           *
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo           *
echo.
echo.
echo.
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo           *
echo.
echo.
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo           *
echo.
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo           *
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo.           
echo           *
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo.           
echo.           
echo           *
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo.           
echo.           
echo.           
echo           _
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo.           
echo.           
echo           *         
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo.           
echo           *           
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo           *           
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo           *       
echo.                    
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo           *           
echo.       
echo.                    
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo           *           
echo.         
echo.    
echo.                    
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo           *           
echo.           
echo.         
echo.    
echo.                    
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo           *          
echo.         
echo.           
echo.         
echo.    
echo.                    
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo           *           
echo.        
echo.         
echo.           
echo.         
echo.    
echo.                    
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo           *
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo           *
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo           *
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo           *
echo.
echo.
echo.
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo           *
echo.
echo.
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo           *
echo.
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo           *
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo.           
echo           *
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo.           
echo.           
echo           *
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo.           
echo.           
echo.           
echo           _
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo.           
echo.           
echo           *         
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo.           
echo           *           
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo           *           
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo           *       
echo.                    
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo           *           
echo.       
echo.                    
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo           *          
echo.    
echo.                    
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo           *           
echo.         
echo.    
echo.                    
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo           *           
echo.           
echo.         
echo.    
echo.                    
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo           *          
echo.         
echo.           
echo.         
echo.    
echo.                    
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo           *
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo           *
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo           *
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo           *
echo.
echo.
echo.
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo           *
echo.
echo.
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo           *
echo.
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo           *
echo.
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo.           
echo           *
echo.
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo.           
echo.           
echo           *
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo.           
echo.           
echo.           
echo           _
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo.           
echo.           
echo           *         
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo.           
echo           *           
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo.       
echo           *           
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo.           
echo           *       
echo.                    
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo           *           
echo.       
echo.                    
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo.           
echo           *          
echo.    
echo.                    
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo.           
echo           *           
echo.         
echo.    
echo.                    
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo.          
echo           *           
echo.           
echo.         
echo.    
echo.                    
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo.           
echo           *          
echo.         
echo.           
echo.         
echo.    
echo.                    
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo -------------------
echo           *           
echo.        
echo.         
echo.           
echo.         
echo.    
echo.                    
echo.          
echo.        
echo.
echo -------------------
ping localhost -n 1 >nul
cls
echo. 
echo -----------------------
echo That Will Be 5 Pounds!
echo -----------------------
echo.
echo -----------------------
echo Please Pay Immediately!
echo -----------------------
set /p input= Type Pay to Pay or No to Not Pay -
if %input%== Pay goto 1
if %input%== No goto 1

:1
cls
echo.
echo ---------------------
echo Thank You For Paying!
echo ---------------------
echo.
echo.
echo.
pause
goto :misc



:ttt
@ECHO OFF
color 0a
@mode con cols=80 lines=25
title Tic_Tac_toe 
:BEGIN  
  REM Skill level
  set sl=
  cls
  echo                          Tic Tac Toe                             (Q to quit)
  echo.
  echo.
  echo        Pick your skill level (press a number)
  echo.
  echo               (1) Easy
echo.
  echo               (2) Medium
echo.
  echo               (3) I Think I can lose a computer 
echo. 
  CHOICE /c:123q /n > nul
  if errorlevel 4 goto end
  if errorlevel 3 set sl=3
  if errorlevel 3 goto layout
  if errorlevel 2 set sl=2
  if errorlevel 2 goto layout
  set sl=1

:LAYOUT
  REM Player turn ("x" or "o")
  set pt=
  REM Game winner ("x" or "o")
  set gw=
  REM No moves
  set nm=
  REM Set to one blank space after equal sign (check with cursor end)
  set t1= 
  set t2= 
  set t3= 
  set t4= 
  set t5= 
  set t6= 
  set t7= 
  set t8= 
  set t9= 

:UPDATE
  cls
  echo   (S to set skill level)          Tic Tac Toe                     (Q to quit)
  echo.
  echo                               You are the X player. 
  echo                    Press the number where you want to put an X.     
  echo.
  echo   Skill level %sl%                       7 8 9 
  echo                                       4 5 6
  echo                                       1 2 3
  echo.
  echo                                       :   :
  echo                                     %t1% : %t2% : %t3%
  echo                                   ....:...:....
  echo                                     %t4% : %t5% : %t6%
  echo                                   ....:...:....
  echo                                     %t7% : %t8% : %t9%
  echo                                       :   :
  if "%gw%"=="x" goto winx2
  if "%gw%"=="o" goto wino2
  if "%nm%"=="0" goto nomoves

:PLAYER
  set pt=x
  CHOICE /c:789456123sq /n > nul
  if errorlevel 11 goto end
  if errorlevel 10 goto begin
  if errorlevel 9 goto 9
  if errorlevel 8 goto 8
  if errorlevel 7 goto 7
  if errorlevel 6 goto 6
  if errorlevel 5 goto 5
  if errorlevel 4 goto 4
  if errorlevel 3 goto 3
  if errorlevel 2 goto 2
  goto 1

:1  
  
  if "%t1%"=="x" goto player
  if "%t1%"=="o" goto player
  set t1=x
  goto check
:2  
  if "%t2%"=="x" goto player
  if "%t2%"=="o" goto player
  set t2=x
  goto check
:3  
  if "%t3%"=="x" goto player
  if "%t3%"=="o" goto player
  set t3=x
  goto check
:4  
  if "%t4%"=="x" goto player
  if "%t4%"=="o" goto player
  set t4=x
  goto check
:5  
  if "%t5%"=="x" goto player
  if "%t5%"=="o" goto player
  set t5=x
  goto check
:6  
  if "%t6%"=="x" goto player
  if "%t6%"=="o" goto player
  set t6=x
  goto check
:7  
  if "%t7%"=="x" goto player
  if "%t7%"=="o" goto player
  set t7=x
  goto check
:8  
  if "%t8%"=="x" goto player
  if "%t8%"=="o" goto player
  set t8=x
  goto check
:9  
  if "%t9%"=="x" goto player
  if "%t9%"=="o" goto player
  set t9=x
  goto check

:COMPUTER
  set pt=o
  if "%sl%"=="1" goto skill1  

  if "%t1%"=="o" if "%t3%"=="o" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t1%"=="o" if "%t9%"=="o" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if "%t1%"=="o" if "%t7%"=="o" if not "%t4%"=="x" if not "%t4%"=="o" goto c4  
  if "%t3%"=="o" if "%t7%"=="o" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if "%t3%"=="o" if "%t9%"=="o" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t9%"=="o" if "%t7%"=="o" if not "%t8%"=="x" if not "%t8%"=="o" goto c8

  if "%t2%"=="o" if "%t8%"=="o" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if "%t4%"=="o" if "%t6%"=="o" if not "%t5%"=="x" if not "%t5%"=="o" goto c5

  if "%t1%"=="o" if "%t2%"=="o" if not "%t3%"=="x" if not "%t3%"=="o" goto c3
  if "%t1%"=="o" if "%t5%"=="o" if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if "%t1%"=="o" if "%t4%"=="o" if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if "%t2%"=="o" if "%t5%"=="o" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  if "%t3%"=="o" if "%t2%"=="o" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t3%"=="o" if "%t5%"=="o" if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if "%t3%"=="o" if "%t6%"=="o" if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if "%t4%"=="o" if "%t5%"=="o" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t6%"=="o" if "%t5%"=="o" if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if "%t7%"=="o" if "%t4%"=="o" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t7%"=="o" if "%t5%"=="o" if not "%t3%"=="x" if not "%t3%"=="o" goto c3
  if "%t7%"=="o" if "%t8%"=="o" if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if "%t8%"=="o" if "%t5%"=="o" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t9%"=="o" if "%t8%"=="o" if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if "%t9%"=="o" if "%t5%"=="o" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t9%"=="o" if "%t6%"=="o" if not "%t3%"=="x" if not "%t3%"=="o" goto c3

  if "%t1%"=="x" if "%t2%"=="x" if not "%t3%"=="x" if not "%t3%"=="o" goto c3
  if "%t1%"=="x" if "%t5%"=="x" if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if "%t1%"=="x" if "%t4%"=="x" if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if "%t2%"=="x" if "%t5%"=="x" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  if "%t3%"=="x" if "%t2%"=="x" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t3%"=="x" if "%t5%"=="x" if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if "%t3%"=="x" if "%t6%"=="x" if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if "%t4%"=="x" if "%t5%"=="x" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t6%"=="x" if "%t5%"=="x" if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if "%t7%"=="x" if "%t4%"=="x" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t7%"=="x" if "%t5%"=="x" if not "%t3%"=="x" if not "%t3%"=="o" goto c3
  if "%t7%"=="x" if "%t8%"=="x" if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if "%t8%"=="x" if "%t5%"=="x" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t9%"=="x" if "%t8%"=="x" if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if "%t9%"=="x" if "%t5%"=="x" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t9%"=="x" if "%t6%"=="x" if not "%t3%"=="x" if not "%t3%"=="o" goto c3
 
  if "%t1%"=="x" if "%t3%"=="x" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t1%"=="x" if "%t9%"=="x" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if "%t1%"=="x" if "%t7%"=="x" if not "%t4%"=="x" if not "%t4%"=="o" goto c4  
  if "%t3%"=="x" if "%t7%"=="x" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if "%t3%"=="x" if "%t9%"=="x" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t9%"=="x" if "%t7%"=="x" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  if "%sl%"=="2" goto skill2

  if "%t2%"=="x" if "%t4%"=="x" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t2%"=="x" if "%t6%"=="x" if not "%t3%"=="x" if not "%t3%"=="o" goto c3
  if "%t8%"=="x" if "%t4%"=="x" if not "%t7%"=="x" if not "%t7%"=="o" goto c7  
  if "%t8%"=="x" if "%t6%"=="x" if not "%t9%"=="x" if not "%t9%"=="o" goto c9

  if "%t1%"=="x" if "%t6%"=="x" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  if "%t1%"=="x" if "%t8%"=="x" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t3%"=="x" if "%t8%"=="x" if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if "%t3%"=="x" if "%t4%"=="x" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  if "%t9%"=="x" if "%t4%"=="x" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t9%"=="x" if "%t2%"=="x" if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if "%t7%"=="x" if "%t2%"=="x" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t7%"=="x" if "%t6%"=="x" if not "%t2%"=="x" if not "%t2%"=="o" goto c2

:SKILL2
  if "%t2%"=="x" if "%t8%"=="x" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if "%t4%"=="x" if "%t6%"=="x" if not "%t5%"=="x" if not "%t5%"=="o" goto c5

  if "%t1%"=="x" if "%t9%"=="x" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t3%"=="x" if "%t7%"=="x" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t1%"=="x" if "%t9%"=="x" if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if "%t3%"=="x" if "%t7%"=="x" if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if "%t1%"=="x" if "%t9%"=="x" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t3%"=="x" if "%t7%"=="x" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t1%"=="x" if "%t9%"=="x" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  if "%t3%"=="x" if "%t7%"=="x" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
:SKILL1 
  if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if not "%t3%"=="x" if not "%t3%"=="o" goto c3
  if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  set nm=0
  goto update

:C1  
  set t1=o
  goto check
:C2  
  set t2=o
  goto check
:C3  
  set t3=o
  goto check
:C4  
  set t4=o
  goto check
:C5  
  set t5=o
  goto check
:C6  
  set t6=o
  goto check
:C7  
  set t7=o
  goto check
:C8  
  set t8=o
  goto check
:C9  
  set t9=o
  goto check

:CHECK
  if "%t1%"=="x" if "%t2%"=="x" if "%t3%"=="x" goto winx
  if "%t4%"=="x" if "%t5%"=="x" if "%t6%"=="x" goto winx
  if "%t7%"=="x" if "%t8%"=="x" if "%t9%"=="x" goto winx
  if "%t1%"=="x" if "%t4%"=="x" if "%t7%"=="x" goto winx
  if "%t2%"=="x" if "%t5%"=="x" if "%t8%"=="x" goto winx
  if "%t3%"=="x" if "%t6%"=="x" if "%t9%"=="x" goto winx
  if "%t1%"=="x" if "%t5%"=="x" if "%t9%"=="x" goto winx
  if "%t3%"=="x" if "%t5%"=="x" if "%t7%"=="x" goto winx
  if "%t1%"=="o" if "%t2%"=="o" if "%t3%"=="o" goto wino
  if "%t4%"=="o" if "%t5%"=="o" if "%t6%"=="o" goto wino
  if "%t7%"=="o" if "%t8%"=="o" if "%t9%"=="o" goto wino
  if "%t1%"=="o" if "%t4%"=="o" if "%t7%"=="o" goto wino
  if "%t2%"=="o" if "%t5%"=="o" if "%t8%"=="o" goto wino
  if "%t3%"=="o" if "%t6%"=="o" if "%t9%"=="o" goto wino
  if "%t1%"=="o" if "%t5%"=="o" if "%t9%"=="o" goto wino
  if "%t3%"=="o" if "%t5%"=="o" if "%t7%"=="o" goto wino
  if "%pt%"=="x" goto computer
  if "%pt%"=="o" goto update

:WINX
  set gw=x
  goto update
:WINX2
  echo   You win!
  echo   Play again (Y,N)?
  CHOICE /c:ynsq /n > nul
  if errorlevel 4 goto end
  if errorlevel 3 goto begin
  if errorlevel 2 goto end
  goto layout

:WINO
  set gw=o
  goto update
:WINO2
  echo   Sorry, You lose.
  echo   Play again (Y,N)?
  CHOICE /c:ynsq /n > nul
  if errorlevel 4 goto end
  if errorlevel 3 goto begin
  if errorlevel 2 goto end
  goto layout

:NOMOVES
  echo   There are no more moves left!
  echo   Play again (Y,N)?
  CHOICE /c:ynsq /n > nul
  if errorlevel 4 goto end
  if errorlevel 3 goto begin
  if errorlevel 2 goto end
  goto layout

:END
  cls
  echo Tic Tac Toe 
  echo.
  set gw=
  set nm=
  set sl=
  set pt=
  set t1=
  set t2=
  set t3=
  set t4=
  set t5=
  set t6=
  set t7=
  set t8=
  set t9=

