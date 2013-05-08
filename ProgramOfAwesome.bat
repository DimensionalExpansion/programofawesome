//Todo:
//Import Batch Chat
//Look into separate batch files being opened
//Import Choose Your Own Adventures
//Consolidate Vars?
//Separate area after localhost ping

//Used variables:
//menuc - Very main menu
//gamesel2 - Choice of Adventure game
@echo off
title The Program of Awesome
color 3
::ll
:main
color 3
cls
echo I__________________________________________________I
echo I	       The Program of Awesome!             I
echo I--------------------------------------------------I
echo Welcome!
//echo Type "chat" to go into the program's LAN chatroom.
echo Type "game" to play a "Choose Your Own Adventure".
echo Type "DOS" to view the DOS attacker.
echo Type "credits" to view the creators of this program.
echo Type "exit" to exit this program.
set /P menuc=:
if /I %menuc%==game goto :gamesel  (
) else (
if /I %menuc%==chat call chat.bat  (
) else (
if /I %menuc%==dos call dos.bat   (
) else (
if /I %menuc%==credits goto :credits  (
) else (
if /I %menuc%==exit goto :exit   (
) else (
if not %menuc%==[chat/game/credits/exit] goto :main
)
)
)

:credits
cls
echo I__________________________________________________I
echo I	       The Program of Awesome!             I
echo I--------------------------------------------------I
echo Thank you to everyone who helped me to make this!
echo.
echo Main Program: Bradley Walters
echo Code Samples: DeBuggy
echo Choose Your Own Adventures: Bradley Walters
echo Batch Chat:
echo DOS attacker: zerfgog
pause >nul
goto :main

:gamesel
cls
echo I__________________________________________________I
echo I	       The Program of Awesome!             I
echo I--------------------------------------------------I
echo Choose the game you would like to play:
echo 1. Crusades
echo 2. Camping
echo 3. Underwater
set /P gamesel2=:
if /I %gamesel2%==1 call crusadegame.bat  (
) else (
if /I %gamesel2%==2 call woodland.bat  (
) else (
if /I %gamesel2%==3 call underwater.bat  (
) else (
if /I %gamesel2%==exit goto :main  (
) else (
if not %gamesel2%==[1/2/3] goto :gamesel
)
)
)
)

:exit
cls
echo I__________________________________________________I
echo I	       The Program of Awesome!             I
echo I--------------------------------------------------I
echo Goodbye!
echo Press any key to exit.
pause >nul
exit
