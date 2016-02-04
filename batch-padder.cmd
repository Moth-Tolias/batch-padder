@ECHO OFF
REM loop over multiple files, padding them out to this standard:
REM [filename]_[a number of digits] eg: nekoatsume_001
REM
REM argument 1: number of digits to pad
REM arg 2: save the original filename or change it? [default save]

SETLOCAL ENABLEEXTENSIONS
SET me=%~n0 
SET parent=%~dp0

REM global vars
SET digits=3 REM how many digits to pad
SET KeepName=1 REM save the original filename or change it

ECHO %parent%
REM in-loop vars
REM SET 
FOR %%c IN (*.*) DO ECHO %%c 
REM FOR %%I IN (%parent%\*) DO ECHO %%I
PAUSE
