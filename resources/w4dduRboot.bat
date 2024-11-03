reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Shell /t REG_SZ /d "explorer.exe" /f
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunOnce" /v installDriver /t REG_SZ /d "%~dp0installDriverNT.bat" /f
bcdedit /deletevalue safeboot
taskkill /f /im explorer.exe
taskkill /f /im explorer.exe
taskkill /f /im explorer.exe
taskkill /f /im explorer.exe
start C:\Windows\explorer.exe
powershell "Set-ExecutionPolicy Unrestricted"
start /WAIT %~dp0DDU\DisplayDriverUninstaller.exe -silent -removemonitors -nosafemodemsg -cleannvidia -restart