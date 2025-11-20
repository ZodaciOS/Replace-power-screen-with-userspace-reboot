# Replace-power-screen-with-userspace-reboot


userspace reboots when doing the power menu combination

hooks into `SBPowerMenuController` and before the screen pops up, it SHOULD perform a userspace reboot

use at your own risk: this shouldnt cause a bootloop but it may cause the springboard to repeatedly crash or entering safe mode

if you do, make a issue on this repo and send the crashlogs (krashkop)
