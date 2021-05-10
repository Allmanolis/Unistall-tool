@echo off

:choice
set /P c=Are you sure you want to delete unistall tool [Y/N]?
if /I "%c%" EQU "Y" goto :somewhere
if /I "%c%" EQU "N" goto :somewhere_else
goto :choice

:somewhere

:WinNT
echo now stopping Unistall tool when it runs
net stop UninstallTool.exe
net stop UninstallToolHelper.exe
echo Time to say good bye to unistall tool
"C:\Program Files\Uninstall Tool\unins000.exe"

:exit
pause

:somewhere_else

exit
