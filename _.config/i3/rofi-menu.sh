#!/bin/bash

# small power menu using rofi, i3, systemd and pm-utils
# (last 3 dependencies are adjustable below)
# tostiheld, 2016

poweroff_command="shutdown -P 0"
reboot_command="reboot"
logout_command="i3-msg exit"
# you can customise the rofi command all you want ...
rofi_command="rofi"

options=$'Power_Off\nReboot\nLogout' 

# ... because the essential options (-dmenu and -p) are added here
eval \$"$(echo "$options" | $rofi_command -dmenu -p "")_command"

