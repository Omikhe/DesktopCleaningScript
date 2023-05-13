@echo off

:start
cls
set /p drive=Enter drive letter: 
set /p filepath=Enter path: 

%drive%: && cd "%drive%:\%filepath%"

::Documents
move *.pdf* "%userprofile%\Documents"  
move *.docx* "%userprofile%\Documents" 
move *.doc* "%userprofile%\Documents" 
move *.txt* "%userprofile%\Documents" 
move *.html* "%userprofile%\Documents" 
move *.xls* "%userprofile%\Documents" 
move *.xlsx* "%userprofile%\Documents" 
move *.rtf* "%userprofile%\Documents" 
move *.ppt* "%userprofile%\Documents" 
move *.pptx* "%userprofile%\Documents" 

::Pictures
move *.jpg* "%userprofile%\Pictures" 
move *.jpeg* "%userprofile%\Pictures" 
move *.gif* "%userprofile%\Pictures" 
move *.tiff* "%userprofile%\Pictures" 
move *.psd* "%userprofile%\Pictures" 
move *.eps* "%userprofile%\Pictures" 
move *.ai* "%userprofile%\Pictures"
move *.svg* "%userprofile%\Pictures"  
move *.png* "%userprofile%\Pictures" 
move *.raw* "%userprofile%\Pictures" 
move *.crw* "%userprofile%\Pictures" 
move *.raf* "%userprofile%\Pictures" 
move *.cr2* "%userprofile%\Pictures" 
move *.rw2* "%userprofile%\Pictures" 

::Video
move *.mp4* "%userprofile%\Videos" 
move *.webm* "%userprofile%\Videos" 
move *.mpg* "%userprofile%\Videos" 
move *.mp2* "%userprofile%\Videos" 
move *.mpeg* "%userprofile%\Videos" 
move *.mpe* "%userprofile%\Videos" 
move *.mpv* "%userprofile%\Videos" 
move *.ogg* "%userprofile%\Videos" 
move *.avi* "%userprofile%\Videos" 
move *.wmv* "%userprofile%\Videos" 
move *.m4p* "%userprofile%\Videos" 
move *.m4v* "%userprofile%\Videos" 
move *.mov* "%userprofile%\Videos" 
move *.qt* "%userprofile%\Videos" 
move *.flv* "%userprofile%\Videos" 
move *.swf* "%userprofile%\Videos" 
move *.avchd* "%userprofile%\Videos" 


::Video
move *.mp3* "%userprofile%\Music" 
move *.wma* "%userprofile%\Videos" 
move *.flp* "%userprofile%\Videos" 
move *.ses* "%userprofile%\Videos" 
move *.wav* "%userprofile%\Videos" 
move *.m4a* "%userprofile%\Videos" 
move *.flac* "%userprofile%\Videos" 
move *.aac* "%userprofile%\Videos" 

::Binaries
move .dll "%userprofile%\Downloads\Binaries"
move .exe "%userprofile%\Downloads\Binaries"

::Archives
move .tar "%userprofile%\Downloads\Archives"
move .gz "%userprofile%\Downloads\Archives"
move .bz2 "%userprofile%\Downloads\Archives"
move .xz "%userprofile%\Downloads\Archives"
move .7z "%userprofile%\Downloads\Archives"

::Installers
move .msi "%userprofile%\Downloads\Installers"
move .dmg "%userprofile%\Downloads\Installers"
move .pkg "%userprofile%\Downloads\Installers"
move .deb "%userprofile%\Downloads\Installers"
move .rpm "%userprofile%\Downloads\Installers"

::Program Files
move .bat "%ProgramFiles%"
move .cmd "%ProgramFiles%"
move .ps1 "%ProgramFiles%"
move .vbs "%ProgramFiles%"
move .js "%ProgramFiles%"

::Other
move *.rar* "%userprofile%\Downloads\Compressed" 
move *.zip* "%userprofile%\Downloads\Compressed" 
move *.exe* "%userprofile%\Downloads\Programs"
move *.iso* "%userprofile%\Downloads\Programs"

echo Done!
pause
goto :start
