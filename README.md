# NVCI
Nvidia Clean Installer

Download a nvidia driver >> https://www.nvidia.com/en-us/drivers/

Drop it onto "dropDriverHere.bat" , let 7zip finish ( CMD Prompts will close )
This will use extractConfig.txt to determine what to extract

Run "runAsAdmin.bat" as admin , will restart into safe mode
This also disables UAC ( making a backup of what state it was in before and restoring it when the script is done )

Make sure to stick around your PC to login when needed ( about 4 total reboots )

Once in safe mode, script will prefab a bit while using DDU to strip nvidia driver and reboot again
Might take a few minutes depending on hardware

Once booted back into normal mode, it will start installing the provided and stripped driver
Apply some tweaks and reboot the system again