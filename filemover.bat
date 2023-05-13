@echo off

REM Navigate to the desktop directory
cd "%userprofile%\Desktop"

REM Parse command-line arguments
set "filetype=%1"
set "destination=%2"
if not defined filetype set "filetype=*.*"
if not defined destination set "destination=%userprofile%\Documents"

REM Move files to the appropriate folder
move *.%filetype% "%destination%"
