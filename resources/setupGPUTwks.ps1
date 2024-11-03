$gpuIDw = wmic path win32_videocontroller get pnpdeviceid
$gpuID = $gpuIDw[2].replace(" ","")
Remove-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Enum\$gpuID\Device Parameters\Interrupt Management\Affinity Policy" -Name DevicePriority -Force
Remove-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Enum\$gpuID\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" -Name MessageNumberLimit -Force
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Enum\$gpuID\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" -Name MSISupported -Value 1 -Force

$gpuDID = Get-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Enum\$gpuID -Name Driver
(Get-Content Data\nvidiaDT.reg) -replace '\%%\%', $gpuDID.driver | Set-Content Data\UserSpcf\nvidiaDTc.reg
Set-Location Data\UserSpcf\
reg import .\nvidiaDTc.reg