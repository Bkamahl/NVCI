@echo off
if exist %~dp0resources\nvDriver\setup.exe (
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Shell /t REG_SZ /d "explorer.exe,%~dp0resources\w4dduRboot.bat" /f
	reg export "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" %~dp0resources\Data\UserSpcf\policiesBU.reg -y
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 0 /f
	bcdedit /set {default} safeboot minimal
	shutdown /r /f /t 00
	exit
) else (
    echo "Please drop a NVidia driver onto the above batch file to strip it before running this script!
	echo "https://www.nvidia.com/en-us/drivers/"
	pause
	exit
)