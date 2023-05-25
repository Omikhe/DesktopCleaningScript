@echo off

REM Keep current working directory
set chilembo=%~d0
set inisho_foda=%~dp0

REM Parse command-line arguments
set "filetype=%1"    REM Specify the file type to be moved
set "destination=%2" REM Specify the destination folder

REM Check if both command-line arguments are defined
REM If yes, perform a single-file-type move
REM If not, execute default commands
if not "%filetype%"=="" if not "%destination%"=="" (
	
	REM Navigate to the desktop directory
	C:
	cd "%userprofile%\Desktop"

	REM Move files of the specified file type to the destination folder
	echo Moving files...
	move *.%filetype% "%destination%"
	
	REM return to intial working directory
	%chilembo% && cd %inisho_foda%

) else (
	
	echo Hello
	REM Read default commands from the configuration file
	for /f "tokens=* delims=" %%a in (config.txt) do (
    		call %%a
	)
	
	REM return to intial working directory
	%chilembo% && cd %inisho_foda%

)
