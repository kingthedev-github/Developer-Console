@echo off
title Console Boot

ECHO =========================
ECHO Console Boot
ECHO =========================
echo.
echo.

set /p cb1="Press Enter To Start Boot"
echo Loading.
timeout /t 1 /nobreak > nul
echo Loading..
timeout /t 1 /nobreak > nul
echo Loading...
timeout /t 1 /nobreak > nul
echo Loading....
timeout /t 1 /nobreak > nul
set /p cb2="Loading Finished Press Enter To Enter Developer Console"
CLS


PROMPT $P$G
COLOR 0D

SET LOGFILE=console.log

:LOOP
CLS
ECHO =========================
ECHO     Developer Console
ECHO ========================= BETA
ECHO 1. List Directory
ECHO 2. Clear Screen
ECHO 3. Custom Command
ECHO 4. Exit
ECHO =========================
echo.

SET /P choice="> "
IF %choice%==1 (
    DIR /B
    PAUSE
    GOTO LOOP
)
IF %choice%==2 (
    CLS
    GOTO LOOP
)
IF %choice%==3 (
    SET /P command="> "
    ECHO %command% >> %LOGFILE%
    %command% 2>&1 | tee -a %LOGFILE%
    PAUSE
    GOTO LOOP
)
IF %choice%==4 (
    EXIT
)
GOTO LOOP