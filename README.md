# WindowsSetupScripts
Optimize Windows for performance and privacy as well as QoL tweaks

Unlike most other guides, this guide will always target the latest version of Windows. It also aims to be straight forward and easy.

### Steps:
Download and thoroughly read through the scripts. Never run scripts downloaded from the internet without knowing exactly what they do.
In this case, you would also want to customize the scripts to your liking. For example, if you are on a battery powered device, you would want to skip the part in the powershell script that activates the ultimate performance power plan. Other power saving features are disabled in this script. In the powershell script, the Bluetooth service is also disabled. You may also want to adjust the mouse sensitiviy in the registry script.

Once you have customized the scripts to your liking, you can run them. For the powershell script, you will need to run powershell as administrator, and you may need to run the following command first:
```
Set-ExecutionPolicy Unrestricted
```