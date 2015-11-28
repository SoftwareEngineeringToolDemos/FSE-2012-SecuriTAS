if not exist "C:\Graphviz" mkdir "C:\Graphviz"
REM "Installing Graphviz from synched folder."
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(new-object -com shell.application).namespace('C:\Graphviz\').CopyHere((new-object -com shell.application).namespace('C:\tool_files\graphviz-2.38.zip').Items(),16)"