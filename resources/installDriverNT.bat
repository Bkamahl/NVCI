%~dp0nvDriver\setup.exe -s -n
cd %~dp0
powershell .\setupGPUTwks.ps1
reg import %~dp0Data\UserSpcf\policiesBU.reg
shutdown /r /f /t 00