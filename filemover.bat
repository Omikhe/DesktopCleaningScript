@echo off

REM Navigate to the desktop directory
cd "%userprofile%\Desktop"

REM Read default commands from configuration file
for /f "tokens=* delims=" %%a in (config.txt) do (
    call %%a
)

REM Parse command-line arguments
set "filetype=%1"
set "destination=%2"
if not defined filetype set "filetype=*.*"
if not defined destination set "destination=%userprofile%\Documents"

REM Move files to the appropriate folder
move *.%filetype% "%destination%"
