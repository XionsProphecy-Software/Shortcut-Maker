
@echo off
setlocal enableExtensions disableDelayedExpansion
set /p exepath=<temp2.txt
set /p exewithoutVD=<temp3.txt
set /p gamedir=<GDir.txt
set /p gamename=<gname.txt
set /p dis=<dis.txt
set /p occyns=<nosteamoc.txt
set /p SCRIPTDIR=<_ExeDirectorySettings.ini

echo %occyns%> ".\Temp\%gamename%(Link).bat"
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%HOMEDRIVE%%HOMEPATH%\AppData\Roaming\Microsoft\Windows\Start Menu\%gamename%(Link).lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "%~dp0\My Launchers\%gamename%(Link).exe" >> CreateShortcut.vbs
echo oLink.WorkingDirectory = "%gamedir%" >> CreateShortcut.vbs
echo oLink.IconLocation = "%exepath%" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs

cscript CreateShortcut.vbs
del CreateShortcut.vbs

%dis%


echo %occyns%> ".\Temp\%gamename%(Link).bat"
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%HOMEDRIVE%%HOMEPATH%\Desktop\%gamename%(Link).lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "%~dp0\My Launchers\%gamename%(Link).exe" >> CreateShortcut.vbs
echo oLink.WorkingDirectory = "%gamedir%" >> CreateShortcut.vbs
echo oLink.IconLocation = "%exepath%" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs

cscript CreateShortcut.vbs
del CreateShortcut.vbs
:exit
exit
