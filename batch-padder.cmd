@ECHO OFF
REM loop over multiple files, padding them out to this standard:
REM [filename]_[a number of digits] eg: nekoatsume_001
REM
REM argument 1: number of digits to pad
REM arg 2: save the original filename or change it? [default save]

SETLOCAL REM because i don't know what it does yet ENABLEEXTENSIONS
SET me=%~n0 
SET parent=%~dp0

REM global vars
SET digits=3 REM how many digits to pad
SET KeepName=1 REM save the original filename or change it

REM in-loop vars
REM SET 