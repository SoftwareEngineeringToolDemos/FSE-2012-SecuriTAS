if not exist "C:\Tools" mkdir "C:\Tools"
if not exist "C:\Graphviz" mkdir "C:\Graphviz"
echo "Downloading Graphviz"
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(New-Object Net.WebClient).DownloadFile('http://www.graphviz.org/pub/graphviz/stable/windows/graphviz-2.38.zip','C:\Tools\Graphviz.zip');(new-object -com shell.application).namespace('C:\Graphviz\').CopyHere((new-object -com shell.application).namespace('C:\Tools\Graphviz.zip').Items(),16)"