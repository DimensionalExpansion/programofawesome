@echo off
title CYOA - Underwater!
color 3
:menu
cls
echo ________________________________________________________________________________
echo  				CYOA Underwater!!
echo --------------------------------------------------------------------------------
echo.
echo Press 1 to begin.
echo Press 2 for help.
echo Press 3 to exit this game.
set /p mainmenu=[1,2,3] 
if /I %mainmenu%==1 goto :begin  (
) else (
if /I %mainmenu%==2 goto :help   (
) else (
if /I %mainmenu%==3 goto :exit   (
) else (
if not %mainmenu%==[1/2/3] goto :menu
goto :menu

:exit
cls
echo ________________________________________________________________________________
echo  				CYOA Underwater!!
echo --------------------------------------------------------------------------------
echo.
echo Goodbye!
ping localhost -n 1>nul
exit

:begin
:askname
cls
echo ________________________________________________________________________________
echo  				CYOA Underwater!!
echo --------------------------------------------------------------------------------
echo.
echo What is your name?
set /p name=

:nameconf
cls
echo ________________________________________________________________________________
echo  				CYOA Underwater!!
echo --------------------------------------------------------------------------------
echo.
echo So your name is %name%?
set /p nconfirm=[y/n]
if /I %nconfirm%==y goto :part1  (
) else (
if /I %nconfirm%==n goto :askname   (
) else (
if not %nconfirm%==[y/n] goto :nameconf

:help
cls
echo ________________________________________________________________________________
echo  				CYOA Underwater!!
echo --------------------------------------------------------------------------------
echo How to play:
echo todo
echo Press any key to return to main menu.
pause >nul 
goto :menu

:part1
cls
echo ________________________________________________________________________________
echo  				CYOA Underwater!!
echo --------------------------------------------------------------------------------
echo insert backstory here
echo Do you choose to go on the mission.. or
echo to not?
set /p part1choice=[y/n]
if /I %part1choice%==y goto :part2  (
) else (
if /I %part1choice%==n goto :death1   (
) else (
if not %part1choice%==[y/n] goto :part1

:part2
cls
echo ________________________________________________________________________________
echo  				CYOA Underwater!!
echo --------------------------------------------------------------------------------
echo this is part 2
pause
exit

:death1
cls
echo ________________________________________________________________________________
echo  				CYOA Underwater!!
echo --------------------------------------------------------------------------------
echo you died somehow
pause
exit