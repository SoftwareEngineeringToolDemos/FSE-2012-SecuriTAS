if not exist "C:\Tools" mkdir "C:\Tools"
echo "Downloading JDK 1.6"
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/SoftwareEngineeringToolDemos/FSE-2012-SecuriTAS/raw/master/build-vm/files/jdk-6u32-windows-i586.exe','C:\Tools\jdk.exe')"
start /WAIT C:\Tools\jdk.exe /s