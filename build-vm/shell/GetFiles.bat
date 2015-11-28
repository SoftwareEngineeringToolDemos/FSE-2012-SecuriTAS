REM "Setting up Necessary Files"
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(new-object -com shell.application).namespace('%USERPROFILE%\Desktop').CopyHere((new-object -com shell.application).namespace('C:\tool_files\tool_files.zip').Items(),16);(new-object -com shell.application).namespace('%USERPROFILE%').CopyHere((new-object -com shell.application).namespace('C:\tool_files\workspace_files.zip').Items(),16)"

echo "Copying files"
xcopy C:\Runner\features\*.* C:\eclipse\features /d /s /k /c /f /e /q /h /y /v
xcopy C:\Runner\plugins\*.* C:\eclipse\plugins /d /s /k /c /f /e /q /h /y /v

copy %USERPROFILE%\Desktop\Run_Graphical_Modeler.bat %PROGRAMDATA%\Microsoft\Windows\"Start Menu"\Programs\Startup