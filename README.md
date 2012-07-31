If you have a wireless XBox controller for PC, then you cannot turn the controller off without removing-and-reattaching the battery pack.

Also, if you shut your computer off, the XBox controller will keep trying to find the wireless receiver until it drains the battery.

This project is a 'shutdown' script which you can use;

*  Set it as a shutdown script so that it always turns the XBox controller off when turning your PC off
*  Call it directly to turn the XBox controller off

You can use the [standalone PowerShell](https://github.com/mendhak/xbox-controller-off/blob/master/TurnControllerOff.ps1) script, or you can use the [executable](https://github.com/downloads/mendhak/xbox-controller-off/XBoxControllerOff.exe) file.

To set it in your shutdown, 

Click Start > Run...
    gpedit.msc

	Go to startup/shutdown scripts:
![GPEdit settings](http://farm9.staticflickr.com/8019/7687420526_f407982d88_o.png)

Under the scripts tab, add the powershell script (adding to the PowerShell tab didn't work for me, I used this tab instead):

![Powershell](http://farm8.staticflickr.com/7268/7687420682_55277376c4_o.png)

Or add the EXE directly

![Exe](http://farm9.staticflickr.com/8028/7687420390_db1316fd43_o.png)

Apply and close.

Finally, Start > Run...

    gpupdate /force



