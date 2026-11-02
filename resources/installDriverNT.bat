%~dp0nvDriver\setup.exe -s -n
powershell -NoProfile -Command "$appx = Get-ChildItem -LiteralPath '%~dp0nvDriver\Display.Driver\NVCPL' -Filter '*.appx' -File -ErrorAction SilentlyContinue | Select-Object -First 1; if ($null -ne $appx) { Add-AppxPackage -Path $appx.FullName -ErrorAction SilentlyContinue }" 2>nul
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0setupGPUTwks.ps1"
reg import %~dp0Data\UserSpcf\policiesBU.reg
shutdown /r /f /t 00
