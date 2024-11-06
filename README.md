# NVCI
Nvidia Clean Installer

Download a nvidia driver >> https://www.nvidia.com/en-us/drivers/

Drop it onto "dropDriverHere.bat" , let 7zip finish ( CMD Prompts will close )
This will also strip it down to just the display driver and phyx

Run "runAsAdmin.bat" as admin , will restart into safe mode

Make sure to stick around your PC to login when needed ( about 4 total reboots )

Once in safe mode, script will prefab a bit while using DDU to strip nvidia driver and reboot again

Then will install given driver and tweak it a bit before rebooting the PC for a final time
