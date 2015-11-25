if not exist "C:\Tools" mkdir "C:\Tools"
echo "Downloading Necessary Files"
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/SoftwareEngineeringToolDemos/FSE-2012-SecuriTAS/raw/master/build-vm/files/tool_files.zip','C:\Tools\tool_files.zip');(new-object -com shell.application).namespace('%USERPROFILE%\Desktop').CopyHere((new-object -com shell.application).namespace('C:\Tools\tool_files.zip').Items(),16);(New-Object Net.WebClient).DownloadFile('https://github.com/SoftwareEngineeringToolDemos/FSE-2012-SecuriTAS/raw/master/build-vm/files/workspace_files.zip','C:\Tools\workspace_files.zip');(new-object -com shell.application).namespace('%USERPROFILE%').CopyHere((new-object -com shell.application).namespace('C:\Tools\workspace_files.zip').Items(),16)"

echo "Copying files"
xcopy C:\Runner\features\*.* C:\eclipse\features /d /s /k /c /f /e /q /h /y /v
xcopy C:\Runner\plugins\*.* C:\eclipse\plugins /d /s /k /c /f /e /q /h /y /v

copy %USERPROFILE%\Desktop\Run_Graphical_Modeler.bat %PROGRAMDATA%\Microsoft\Windows\"Start Menu"\Programs\Startup