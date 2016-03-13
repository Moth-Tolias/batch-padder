@ECHO OFF
REM loop over multiple files, padding them out to this standard:
REM [filename]_[a number of digits] eg: nekoatsume_001
REM
REM argument 1: number of digits to pad
REM arg 2: save the original filename or change it? [default:save]
REM the file extension to search for
 
SETLOCAL ENABLEEXTENSIONS
SET me=%~n0 
SET parent=%~dp0

REM global vars
SET digits=%1
SET NewName=%2
SET extension=%3
SET dir=%4

REM default values
IF "%digits%"=="" ( 
	ECHO How many digits would you like to use? 
	SET /p digits= 
	)
IF "%digits%"=="" ( SET digits=3 )

IF "%NewName%"=="" ( 
	ECHO Please enter a prefix.&ECHO Alternatively, press ENTER to use the original.
	SET /p NewName= 
	)

IF "%extension%"=="" ( 
	ECHO What extension would you like to search for? 
	SET /p extension=
	)
IF "%extension%"=="" ( SET extension=bmp )

REM Directory code
IF "%dir%"=="" ( CHOICE /m Would you like to enter a folder?
	IF %ERRORLEVEL% < 2 ( GOTO :Changedir ) REM ////////////////////////////////////
	SET /p dir= Please specify the folder to enter. 

:Changedir
IF "%dir%"=="" ( GOTO :Mainloop )
cd %dir%
REM error check this? ////////////////////////////////////
 
:Mainloop
FOR %%I IN (*.%extension%) DO ECHO %%I 
REM add a check for the prefix not being set and skip the prefix code is all we need 
PAUSE