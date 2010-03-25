:: ---------------------------------------------------------------------------------------
:: This source file is part of swgANH (Star Wars Galaxies - A New Hope - Server Emulator)
:: For more information, see http://www.swganh.org
:: 
:: 
:: Copyright (c) 2006 - 2009 The swgANH Team
:: 
:: ---------------------------------------------------------------------------------------

:: -- Prepare the Command Processor
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION

::
:: Define Variables
:: 
SET db_pass=
SET db_user=
SET db_host=


:: Set the window title 
SET title=%~n0
TITLE %title%


::
:: Start
::

@ECHO OFF
	call:ScreenClear
	call:Setup
	GOTO:menuLOOP
	
	
:menuLOOP
	call:ScreenClear

		for /f "tokens=1,2,* delims=_ " %%A in ('"findstr /b /c:":menu_" "%~f0""') do echo.  %%B  %%C
		set choice=
		echo.&set /p choice=Make a choice or hit ENTER to quit: ||GOTO:EOF
		echo.&call:menu_%choice%

	GOTO:menuLOOP

	
:: 
:: menu functions
:: 

:menu_Options:
GOTO:EOF

:menu_

:menu_1   Setup Databases & Users

	::
	:: Setup Databases & Users
	::

	call:ScreenClear	
	cd Create Scripts
	ECHO.
	ECHO.
	ECHO.
	
	mysql --password=%db_pass% --host=%db_host% --user=%db_user% --comments --default-character-set=utf8 < "create.sql"
	
	call:sleep 2
	TITLE %title%
	call:ScreenClear
	call:ScreenDBComplete
	cd ..
	call:sleep 5
GOTO:EOF

	
:menu_2   Setup Main Schema

	::
	:: Setup Main Server Schema
	::
	
	call:ScreenClear
	cd Server Scripts
	call:GetFileCount
	ECHO.
	ECHO.
	ECHO.                Starting installation for %maxcnt% files...
	ECHO.
	ECHO.
	call:initProgress %maxcnt%

	for /F %%A IN ('dir /b "*.sql"') do (
		mysql --password=%db_pass% --host=%db_host% --user=%db_user% --comments --default-character-set=utf8 < "%%A"
		ECHO.Installing %%A [Done]
		call:doProgress
	)
	
	call:sleep 2
	TITLE %title%
	call:ScreenClear
	call:ScreenDBComplete
	cd ..
	call:sleep 5
GOTO:EOF
	
	
:menu_3   Setup Stored Functions

	::
	:: Load Stored Functions
	::
	
	call:ScreenClear
	cd Server Scripts
	cd Functions
	call:GetFileCount
	ECHO.
	ECHO.
	ECHO.                Starting installation for %maxcnt% files...
	ECHO.
	ECHO.
	call:initProgress %maxcnt%
	
	for /F %%A IN ('dir /b "*.sql"') do (
		mysql --password=%db_pass% --host=%db_host% --user=%db_user% --comments --default-character-set=utf8 < "%%A"
		ECHO.Installing %%A [Done]
		call:doProgress
	)

	cd ..
	cd ..
	call:sleep 2
	TITLE %title%
	call:ScreenClear
	ECHO.
	ECHO.
	ECHO.
	ECHO.                     Stored Functions Load Complete
	call:sleep 5

GOTO:EOF
	
:menu_4   Setup Stored Procedures

	::
	:: Load Stored Procedures
	::

	call:ScreenClear
	cd Server Scripts
	cd Procedures
	call:GetFileCount
	ECHO.
	ECHO.
	ECHO.                Starting installation for %maxcnt% files...
	ECHO.
	ECHO.
	call:initProgress %maxcnt%
	
	for /F %%A IN ('dir /b "*.sql"') do (
		mysql --password=%db_pass% --host=%db_host% --user=%db_user% --comments --default-character-set=utf8 < "%%A"
		ECHO.Installing %%A [Done]
		call:doProgress
	)
	
	cd ..
	cd ..
	call:sleep 2
	TITLE %title%
	call:ScreenClear
	ECHO.
	ECHO.
	ECHO.
	ECHO.                    Stored Procedures Load Complete
	call:sleep 5
		
GOTO:EOF

:menu_
:menu_5   Backup Existing Database
	call:ScreenClear
	FOR /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set dt=%%c-%%a-%%b)
	FOR /f "tokens=1-4 delims=:." %%a in ('echo %time%') do (set tm=%%a%%b%%c%%d)
	set bkupfilename=%1 %dt% %tm%.bak
	echo Backing up to file: %bkupfilename%
	
	mysqldump --routines --host=%db_host% --user=%db_user% --password=%db_pass% swganh > "%bkupfilename%"
	
	echo Backup Complete
	pause

GOTO:EOF

:menu_6   Delete Existing Database
	call:ScreenClear
	call:mySQLDeleteCurrentDatabase
	call:Sleep 5
	GOTO:EOF
	
:menu_7   Change Script Settings
	call:ScreenClear
	call:Setup
	GOTO:EOF

:menu_8   Generate Server Resources
	call:ScreenClear
	call:mySQLGenerateResources
	call:sleep 5
GOTO:EOF

:menu_
:menu_9   Setup AstroMech Scripts

	::
	:: Load AstroMech Procedures
	::

	call:ScreenClear
	cd AstroMech Scripts
	call:GetFileCount
	ECHO.
	ECHO.
	ECHO.                Starting installation for %maxcnt% files...
	ECHO.
	ECHO.
	call:initProgress %maxcnt%
	
	for /F %%A IN ('dir /b "*.sql"') do (
		mysql --password=%db_pass% --host=%db_host% --user=%db_user% --comments --default-character-set=utf8 < "%%A"
		ECHO.Installing %%A [Done]
		call:doProgress
	)
	
	cd ..
	call:sleep 2
	TITLE %title%
	call:ScreenClear
	ECHO.
	ECHO.
	ECHO.
	ECHO.                        AstroMech Load Complete
	call:sleep 5
		
GOTO:EOF

:menu_0   Setup Administrator Scripts

	::
	:: Load AstroMech Procedures
	::

	call:ScreenClear
	cd AdminScripts
	call:GetFileCount
	ECHO.
	ECHO.
	ECHO.                Starting installation for %maxcnt% files...
	ECHO.
	ECHO.
	call:initProgress %maxcnt%
	
	for /F %%A IN ('dir /b "*.sql"') do (
		mysql --password=%db_pass% --host=%db_host% --user=%db_user% --comments --default-character-set=utf8 < "%%A"
		ECHO.Installing %%A [Done]
		call:doProgress
	)
	
	cd ..
	call:sleep 2
	TITLE %title%
	call:ScreenClear
	ECHO.
	ECHO.
	ECHO.
	ECHO.                    Admin Scripts Load Complete
	call:sleep 5
		
GOTO:EOF

:menu_

:menu_S Stats
	call:ScreenClear
	ECHO.
	ECHO.                         Current Script VARS
	ECHO.
	ECHO.
	ECHO.
	ECHO.  The IP/Hostname of the database server is  -----------^> %db_host%
	ECHO.
	ECHO.  The root privileged user for the database is ---------^> %db_user%
	ECHO.
	ECHO.  The root privileged user password is -----------------^> %db_pass%
	ECHO.
	cd Server Scripts
	call:GetFileCount
	cd ..
	ECHO.  Number of SQL scripts for the main schema is  --------^> %maxcnt%
	ECHO.
	set maxcnt=0
	cd Server Scripts
	cd Functions
	call:GetFileCount
	cd ..
	cd ..
	ECHO.  Number of Stored Procedures for the main schema is  --^> %maxcnt%
	ECHO.
	set maxcnt=0
	cd Server Scripts
	cd Procedures
	call:GetFileCount
	cd ..
	cd ..
	ECHO.  Number of Stored Functions for the main schema is  ---^> %maxcnt%
	ECHO.
	ECHO.
	ECHO.
	PAUSE
	
GOTO:EOF

:menu_

:menu_C Complete DB Install

	::
	:: Complete DB Install
	::

	call:ScreenClear
	call:sleep 5
GOTO:EOF

:menu_
:menu_Select:

::
:: Functions
::


:ScreenClear
CLS
ECHO.
ECHO. ----------------------------------------------------------------------
ECHO.  SWGANH Database Install Script                              (v.0.01)
ECHO. ----------------------------------------------------------------------
ECHO.  DB IP: %db_host%     DB Username: %db_user%    DB Password: %db_pass%
ECHO. ----------------------------------------------------------------------
ECHO.
ECHO.                       SWGANH Database Installer
ECHO.
GOTO:EOF

:ScreenDBComplete
ECHO.
ECHO.
ECHO.
ECHO.                        Database Load Complete
GOTO:EOF

:Setup
ECHO.                     Install Script - Setup Process
ECHO.
ECHO.
SET /P db_host=Please enter the IP / hostname of the database: 
SET /P db_user=Please enter the username with root access: 
SET /P db_pass=Please enter the password for the user: 
GOTO:EOF


:LogClean
set logfile=d:\swganh.log
if exist "%logfile%" del "%logfile%"
GOTO:EOF


:GetFileCount
set maxcnt=0
	for /F %%D IN ('dir /b "*.sql"') do (
		SET /A maxcnt += 1
	)
GOTO:EOF

:mySQLGenerateResources
mysql --password=%db_pass% --host=%db_host% --user=%db_user% --default-character-set=utf8 --database=swganh --execute="CALL sp_ResourceInitialSpawn()"
ECHO.
ECHO.
ECHO.                   Resource Generation is completed.
ECHO.
ECHO.
GOTO:EOF

:mySQLDeleteCurrentDatabase
ECHO. Deleting swganh database
mysql --password=%db_pass% --host=%db_host% --user=%db_user% --default-character-set=utf8 --execute="DROP DATABASE swganh"
ECHO. Deleting swganh_archive database
mysql --password=%db_pass% --host=%db_host% --user=%db_user% --default-character-set=utf8 --execute="DROP DATABASE swganh_archive"
ECHO. Deleting swganh_astromech database
mysql --password=%db_pass% --host=%db_host% --user=%db_user% --default-character-set=utf8 --execute="DROP DATABASE swganh_astromech"
ECHO. Deleting swganh_logs database
mysql --password=%db_pass% --host=%db_host% --user=%db_user% --default-character-set=utf8 --execute="DROP DATABASE swganh_logs"
ECHO.
ECHO.
ECHO.                     Databases have been removed.
ECHO.
ECHO.
GOTO:EOF


:initProgress -- initialize an internal progress counter and display the progress in percent
::            -- %~1: in  - progress counter maximum, equal to 100 percent
::            -- %~2: in  - title string formatter, default is '[P] completed.'
set /a ProgressCnt=-1
set /a ProgressMax=%~1
set ProgressFormat=%~2
if "%ProgressFormat%"=="" set ProgressFormat=[PPPP]
set ProgressFormat=!ProgressFormat:[PPPP]=[P] completed.!
call :doProgress
GOTO:EOF


:doProgress -- display the next progress tick
set /a ProgressCnt+=1
SETLOCAL
set /a per=100*ProgressCnt/ProgressMax
set per=!per!%%
title %ProgressFormat:[P]=!per!%
GOTO:EOF


:sleep -? waits some seconds before returning
::     -- %~1 ? in, number of seconds to wait
FOR /l %%a in (%~1,-1,1) do (ping -n 2 -w 1 127.0.0.1>NUL)
goto :eof