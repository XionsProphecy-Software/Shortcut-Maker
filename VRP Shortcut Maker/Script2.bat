
@echo off
setlocal enableExtensions disableDelayedExpansion
set /p fullpathVD=<temp.txt
set /p exepath=<temp2.txt
set /p exewithoutVD=<temp3.txt
set /p gamedir=<gdir.txt
set /p gamename=<gname.txt
set /p steamargs=<tempSteam.txt
set /p dis=<dis.txt
set /p SCRIPTDIR=<_ExeDirectorySettings.ini

echo %fullpathVD% -steam -vr> ".\Temp\%gamename%(VD+Steam).bat"
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%HOMEDRIVE%%HOMEPATH%\AppData\Roaming\Microsoft\Windows\Start Menu\\%gamename%(VD+Steam).lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "%~dp0\My Launchers\%gamename%(VD+Steam).exe" >> CreateShortcut.vbs
echo oLink.WorkingDirectory = "%gamedir%" >> CreateShortcut.vbs
echo oLink.IconLocation = "%exepath%" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs



cscript CreateShortcut.vbs
del CreateShortcut.vbs

%dis%


echo %fullpathVD% -steam -vr> ".\Temp\%gamename%(VD+Steam).bat"
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%HOMEDRIVE%%HOMEPATH%\Desktop\%gamename%(VD+Steam).lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "%~dp0\My Launchers\%gamename%(VD+Steam).exe" >> CreateShortcut.vbs
echo oLink.WorkingDirectory = "%gamedir%" >> CreateShortcut.vbs
echo oLink.IconLocation = "%exepath%" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs



cscript CreateShortcut.vbs
del CreateShortcut.vbs
:exit
exit
