#!/bin/bash

# options to be displayed
option0="Lock"
option1="Exit"
option2="Suspend"
option3="Reboot"
option4="Shutdown"

# options passed into variable
options="$option0\n$option1\n$option2\n$option3\n$option4"

chosen="$(echo -e "$options" | rofi -lines 5 -width 25% -dmenu -selected-row 2 -i)"
case $chosen in
    $option0)
        light-locker-command -l;;
    $option1)
        bspc quit;;
    $option2)
        systemctl suspend;;
    $option3)
        systemctl reboot;;
    $option4)
        systemctl poweroff;;
esac
