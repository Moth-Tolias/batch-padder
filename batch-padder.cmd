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
SET KeepName=%2
SET extension=%3

REM default values
IF "%digits%"=="" ( SET digits=3 )
IF "%KeepName%"=="" ( SET KeepName=1 )
IF "%extension%"=="" ( SET extension=bmp )

ECHO %parent%
REM in-loop vars
REM SET 
FOR %%I IN (*.%extension%) DO ECHO %%I 
REM 
PAUSE