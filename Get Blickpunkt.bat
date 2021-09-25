@echo off

::Folderpath for Output on Desktop
rem Set "output=%userprofile%\Desktop\Blickpunkt Bilder"
::Or in Temp Folder
Set "output=%temp%\Blickpunkt Bilder"

IF EXIST "%output%" Del "%output%" /S /Q
robocopy "%localappdata%\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets" "%output%" /min:153600
cd "%output%"
ren *.* *.jpg
explorer.exe "%output%"