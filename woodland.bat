@echo off
color 2
title Woodland
::ll
:start
cls
echo ________________________________________________________________________________
echo  				Woodland
echo --------------------------------------------------------------------------------
echo .              To begin, well, type "begin"
echo .              To view program info, type "credits"
echo .              To close this program, type "exit"
echo .              To visit Chapter Select, type "CHsel"
set /P start=  :
if /I %start%==begin goto :choosename  (
) else (
if /I %start%==credits goto :info  (
) else (
if /I %start%==exit goto :exit  (
) else (
if /I %start%==CHsel goto :chsel  (
) else (
if not %start%==[begin/credits/exit/CHsel] goto :start
)
)
)
)

:exit
cls
echo ________________________________________________________________________________
echo  				Woodland
echo --------------------------------------------------------------------------------
echo .           Thanks for playing!
pause
exit

:info
cls
echo ________________________________________________________________________________
echo  				Woodland
echo --------------------------------------------------------------------------------
echo - INFORMATION -
echo.
echo.
echo.
echo Creator: zerfgog
echo.
echo Programmed using: Notepad, Notepad++, and CMD
echo.
echo.
echo Version 0.0.4
echo.
echo.
echo.
pause
goto :start

:chsel
cls
echo ________________________________________________________________________________
echo  				Woodland
echo --------------------------------------------------------------------------------
echo .   Type the ch. number of the chapter
echo .   that you would like to jump to.
echo .           CH. 1 -  The camp
echo .           CH. 2 -  Robbins
echo .           CH. 3 -  The enemy
set /P ch=  [1/2/3]
if /I %ch%==1 goto :ch1  (
) else (
if /I %ch%==2 goto :ch2  (
) else (
if /I %ch%==3 goto :ch3  (
) else (
if not %ch%==[1/2/3] goto :chsel
)
)
)

:choosename
cls
echo ________________________________________________________________________________
echo  				Woodland
echo --------------------------------------------------------------------------------
echo . Hello! Please type your first name!
set /P firstname= :
cls
echo ________________________________________________________________________________
echo  				Woodland
echo --------------------------------------------------------------------------------
echo . Now type your last name.
set /P lastname= :
cls
:choosenamealmostdone
cls
echo ________________________________________________________________________________
echo  				Woodland
echo --------------------------------------------------------------------------------
echo .  So your name is %firstname% %lastname%?
echo .  If not, type "n". If it is correct, type "y".
set /P uno= :
if /I %uno%==y goto :ch1 (
) else (
if /I %uno%==n goto :choosename (
) else (
if not %uno%==[y/n] goto :choosenamealmostdone
)
)

:ch1
cls
echo ________________________________________________________________________________
echo  				Woodland
echo --------------------------------------------------------------------------------
echo .   Your name is %firstname% %lastname%. You
echo .   are about 19 years old. The year is
echo .   1978. You decide to take a camping
echo .   trip with your best friend John Young.
echo .   You have a backpack with supplies.
echo .   Your wristwatch says the time is 
echo .   11:00 A.M.
echo.
echo.
echo .   John asks you if you would like to go
echo .   fishing for supper.
echo .     Will you go fishing?
set /P uno= [y/n]
if /I %uno%==y goto :uno1 (
) else (
if /I %uno%==n goto :uno2 (
) else (
if not %uno%==[y/n] goto :ch1
)
)

:uno1
cls
echo ________________________________________________________________________________
echo  				Woodland
echo --------------------------------------------------------------------------------
echo .   You decide to fish with your friend.
echo .   You spend 3 hours fishing. You catch 7
echo .   cat fish and 3 trout between you both.
echo .   You keep 2 catfish and a trout to eat,
echo .   and throw back the rest.
pause
goto :ch1.11

:uno2
cls
echo ________________________________________________________________________________
echo  				Woodland
echo --------------------------------------------------------------------------------
echo .   Your friend is disappointed that you did
echo .   not want to fish. You play cards until 2:00 P.M.
echo .   John decides to pitch a tent. He suggests you
echo .   chop some firewood.
pause
goto :ch1.2

:ch1.1
cls
echo ________________________________________________________________________________
echo  				Woodland
echo --------------------------------------------------------------------------------
echo .   You return to your camp area. It is now
echo .   2:00 P.M. You can now pitch a tent, or
echo .   gather firewood. Which will you do?
set /P dos= [wood/tent]
if /I %dos%==wood goto :ch1.2 (
) else (
if /I %dos%==tent goto :ch1.4 (
) else (
if not %dos%==[wood/tent] goto :ch1.1
)
)

:ch1.11
cls
echo ________________________________________________________________________________
echo  				Woodland
echo --------------------------------------------------------------------------------
echo .   You return to your camp area. It is now
echo .   2:00 P.M. You can now pitch a tent, or
echo .   gather firewood. Which will you do?
set /P dos= [wood/tent]
if /I %dos%==wood goto :ch1.21 (
) else (
if /I %dos%==tent goto :ch1.4 (
) else (
if not %dos%==[wood/tent] goto :ch1.11
)
)

:ch1.21
cls
echo ________________________________________________________________________________
echo  				Woodland
echo --------------------------------------------------------------------------------
echo .   You go to gather firewood. John gets
echo .   ready to pitch the tent. You come across a
echo .   large fallen log. You begin to chop pieces off
echo .   of it. On your way back to the campsite,
echo .   you find an old map on the ground. You wait to
echo .   show it to your friend.
pause
goto :ch1.3

:ch1.2
cls
echo ________________________________________________________________________________
echo  				Woodland
echo --------------------------------------------------------------------------------
echo .   You go to gather firewood. John gets
echo .   ready to pitch the tent. You come across a
echo .   large fallen log. You begin to chop pieces off
echo .   of it. On your way back to the campsite,
echo .   you find an old map on the ground. You wait to
echo .   show it to your friend.
pause
goto :ch1.3

:ch1.3
cls
echo ________________________________________________________________________________
echo  				Woodland
echo --------------------------------------------------------------------------------
echo .   You arrive back at the camp. John
echo .   is proud of his tent-pitching skills.
echo .   You show him the map and put your
echo .   supplies in the tent. John says "The
echo .   map shows a hike to a beautiful
echo .   rock formation!" You both want
echo .   to check it out the next morning.
echo .
pause