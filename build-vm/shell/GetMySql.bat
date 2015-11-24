if not exist "C:\Tools" mkdir "C:\Tools"

echo "Downloading MySql"
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(New-Object Net.WebClient).DownloadFile('http://dev.mysql.com/get/Downloads/MySQLInstaller/mysql-installer-community-5.7.9.1.msi','C:\Tools\mysql.msi')"

echo "Installing MySql"
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(Start-Process 'C:\Tools\mysql.msi' /qn -Wait)"

set mysql_loc="C:\Program Files\MySQL\MySQL Installer for Windows"
%mysql_loc%\MySQLInstallerConsole community install server;5.7.9;x86:*:type=config;openfirewall=true;port=3306;rootpasswd=paperino;installdir="C:\MySQL\MySQL Server 5.7";datadir="C:\MySQL\MySQL Server 5.7\data" -silent