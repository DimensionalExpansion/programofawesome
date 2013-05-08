//todo:
//Add stuff to inventory
//Implement week/month/year
//Choice for 3a & succeeding 4a/4b
//3b-Alone with Armor
//4c-Exiled, killed on island
//4d-Continuing to war with group and armor
@echo off
title Crusaders
::ll
:menu
color 84
set coinamount=5
set hasarmor==false
cls
echo ________________________________________________________________________________
echo 			        CRUSADERS - PoA
echo --------------------------------------------------------------------------------
echo			        Type "start" to begin the game.
echo 	        Type "exit" to return to the Program of Awesome.
set /p mainmenu=:			  Command: 
if /I %mainmenu%==commands goto :commands
if /I %mainmenu%==exit call ProgramOfAwesome.bat
if /I %mainmenu%==start goto :start
if not %mainmenu%==[commands/exit/start] goto :menu

:start
cls
echo ________________________________________________________________________________
echo 			        CRUSADERS - PoA
echo --------------------------------------------------------------------------------
echo .		          Enter your character's name: 
set /p name=:
:nc
echo So your name is %name%?
echo Yes or no?
set /P nameconfirm=:
if /I %nameconfirm%==yes goto :start2
if /I %nameconfirm%==no goto :start
if not %nameconfirm%==[yes/no] goto :nc

:start2
cls
echo ________________________________________________________________________________
echo 			        CRUSADERS - PoA
echo --------------------------------------------------------------------------------
echo Pope Urban II has been talking of war.
echo The people of Jerusalem have fallen to the Turkish.
echo The old people of Jerusalem were fairly kind to us,
echo even though our beliefs were not alike,
echo but the Turkish slaughtered many of our faith.
echo Both the old people of Jerusalem and the Turks were Islamic,
echo but the old people of Jerusalem accepted the fact we were Christian.
echo Now, Pope Urban is reaching out to the people,
echo requesting that we help him take Jerusalem from the Turks.
echo He claims that if we are to help him in the war and die while doing so,
echo we are granted immediate access to heaven.
echo.
echo So %name%. You now face a choice:
echo 1. Join Pope Urban in the war against the Turks.
echo 2. Stay home, and go back to being a lowly peasant.
set /p choiceuno=Enter the number of your choice: 
if %choiceuno%==1 goto :1a  (
if %choiceuno%==2 goto :1b  (
if not %choiceuno%==[1/2] goto :start

:inventory
cls
echo ________________________________________________________________________________
echo 			        CRUSADERS - PoA
echo --------------------------------------------------------------------------------
echo Coin: %coinamount%
echo.
echo You have the following items:
if %choiceuno%==1 echo -Symbol of Pope Urban
if %hasarmor%==true echo -Armour
pause
exit

:1b
cls
echo ________________________________________________________________________________
echo 			        CRUSADERS - PoA
echo --------------------------------------------------------------------------------
echo You didn't go? What a shame. I am disappointed in you.
echo Later in your life, you get killed by the Black Plague. Such a shame.
echo R.I.P. %name%.
echo.
echo Press any key to exit to menu.
pause >nul
goto :menu

:1a
cls
echo ________________________________________________________________________________
echo 			        CRUSADERS - PoA
echo --------------------------------------------------------------------------------
echo Before you can go on the crusade,
echo you must first aquire some armour.
echo You can buy some, at the cost of most of your coin.
echo You are now with a choice.
echo.
echo 1 Buy armour.
echo 2 Keep your coin.
set /p unoa=Enter the number of your choice: 
if %unoa%==1 goto :2a
if %unoa%==2 goto :2b
if %unoa%==inventory goto :inventory
if not %unoa%==2 goto :1a

:2a
cls
echo ________________________________________________________________________________
echo 			        CRUSADERS - PoA
echo --------------------------------------------------------------------------------
set hasarmor==true
set /a coinamount-=3
echo You buy armour with a red cross on it.
echo This is the symbol of the crusaders.
echo Now that you have armour, you are ready to go to Jerusalem.
echo Well, almost.
echo You need a way to get there.
echo You can travel in a group, (safer) but take time to assemble one.
echo Or, you can travel alone.
echo.
echo You are now with a choice.
echo 1. Travel in a group.
echo 2. Travel alone.
set /p dosa=Enter the number of your choice: 
if %dosa%==1 goto :3a
if %dosa%==2 goto :3b
if %dosa%==inventory goto :inventory
if not %dosa%==2 goto :2a

:2b
cls
echo ________________________________________________________________________________
echo 			        CRUSADERS - PoA
echo --------------------------------------------------------------------------------
echo You keep your money.
echo You need a way to get to Jerusalem.
echo Do you choose to travel in a group, or travel alone?
echo You are now with a choice.
echo.
echo 1. Travel in a group.
echo 2. Travel alone.
set /p dosb=Enter the number of your choice: 
if %dosb%==1 goto :3c
if %dosb%==2 goto :3d
if not %dosb%==[1/2] goto :2b

:3a
cls
echo ________________________________________________________________________________
echo 			        CRUSADERS - PoA
echo --------------------------------------------------------------------------------
echo You ask a leader for recommendations for a group. He directs you
echo to a band of ragtag soldiers: a strong dark-skinned serf named Alof,
echo a wiry woman named Franky, and a non-husky yet still strong leader named Cole.
echo INCOMPLETE
pause
exit

:3b
cls
echo ________________________________________________________________________________
echo 			        CRUSADERS - PoA
echo --------------------------------------------------------------------------------
echo You are going alone with armor. NOT COMPLETED
pause
exit

:3c
echo ________________________________________________________________________________
echo 			        CRUSADERS - PoA
echo --------------------------------------------------------------------------------
echo You ask a leader for recommendations for a group. He directs you
echo to a band of ragtag soldiers: a strong dark-skinned serf named Alof,
echo a wiry woman named Franky, and a non-husky yet still strong leader named Cole.
pause
cls
echo ________________________________________________________________________________
echo 			        CRUSADERS - PoA
echo --------------------------------------------------------------------------------
echo It is now time to go off to fight for your religion. Are you sure you
echo will go? Or will you chicken out and be declared an outcast?
echo.
echo 1. Chicken out.
echo 2. Continue to war!
set /p tresc=Enter the number of your choice: 
if %tresc%==1 goto :4c
if %tresc%==2 goto :4d
if not %tresc%==2 goto :3c
pause
exit

:3d
cls
echo ________________________________________________________________________________
echo 			        CRUSADERS - PoA
echo --------------------------------------------------------------------------------
echo On the way, you are beaten and killed by a group of theifs.
echo Going alone?
echo Without armour?
echo What did you think was going to happen?
echo.
echo Press any key to exit to menu.
pause >nul
goto :menu

:4a

:4b

:4c
echo ________________________________________________________________________________
echo 			        CRUSADERS - PoA
echo --------------------------------------------------------------------------------
echo For wasting the time of everyone dedicated to the cause,
echo you have been exiled to a foreign island.
pause
call island.bat

:4d