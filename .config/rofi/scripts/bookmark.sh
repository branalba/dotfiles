#!/bin/bash

# options to be displayed
option0="~/Nextcloud/professional_files/Ravata Solutions"

# options passed into variable
options="$option0"

chosen="$(echo -e "$options" | rofi -lines 1 -width 25% -dmenu -selected-row 2 -i)"
case $chosen in
    $option0)
        urxvt -cd '/home/branalba/Nextcloud/professional_files/Ravata Solutions' ;;
esac
