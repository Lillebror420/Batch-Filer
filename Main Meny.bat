@echo off
color 1
title Velkommen
set /a cl=0
set /p p=Username:
if %p%==user goto :pass
goto :wrong

:wrong
title try again
if %cl%==0 cls
set /a cl=1
echo Try again
goto :wrong

:pass
set /a cl=0
set /p p=Password:
if %p%==1234 goto :menu
goto :wrongpassword

:wrongpassword
title Access Denied
if %cl%==0 cls
set /a cl=1
echo Wrong Password Inputed!
goto :wrongpassword

:menu
title Main Menu
cls
echo -----------------------------------------------
echo 1: View Your IP Address
echo 2: User list on computer
echo 4: Start Notepad
echo 5: Start Edge
echo 6: Vis bruger liste
echo 7: Viser liste over dine diske
echo 8: Opret en ny bruger
echo 9: Slet en bruger
echo 10: Exit Menu
echo -----------------------------------------------
set /p p=:
if %p%==1 goto :IP
if %p%==2 goto :Users
if %p%==4 goto :Notepad
if %p%==5 goto :edge
if %p%==6 goto :Users
if %p%==7 goto :disks
if %p%==8 goto :userNew
if %p%==9 goto :userDel
if %p%==10 goto :Exit

:Notepad
start Notepad
goto :menu

:Exit
cls
exit

:edge
start msedge
goto :menu

:IP
title IP
cls
echo ------------------------------------------------
ipconfig
echo ------------------------------------------------
echo a: Tilbage til hovede menu
set /p p=:
if %p%==a goto :menu

:Users
title Users
cls
echo ---------------------------------------------------------------------------------------------------------
net users
echo ---------------------------------------------------------------------------------------------------------
echo a: Tilbage til hovede menu
set /p p=:
if %p%==a goto :menu

:disks
title Harddiske
cls
echo ---------------------------------------------------------------------------------------------------------
wmic logicaldisk get caption,providername,drivetype,volumename,description
echo ---------------------------------------------------------------------------------------------------------
echo a: Tilbage til hovede menu
set /p p=:
if %p%==a goto :menu

:userNew
cls
echo ---------------------------------------------------------------------------------------------------------
title Opret ny bruger
set /p UNAME="Hvad skal brugeren hedde: "
set /p PWORD="Hvilket password skal brugeren have: "
net user %UNAME% %PWORD%% /add
echo Brugeren %UNAME% er nu oprettet med %PWORD%
echo ---------------------------------------------------------------------------------------------------------
echo a: Tilbage til hovede menu
set /p p=:
if %p%==a goto :menu

:userDel
cls
echo ---------------------------------------------------------------------------------------------------------
title Slet en bruger
set /p UNAME="Hvilken bruger skal slettes: "
net user %UNAME% /del
echo Brugeren %UNAME% er nu slettet
echo ---------------------------------------------------------------------------------------------------------
echo a: Tilbage til hovede menu
set /p p=:
if %p%==a goto :menu