#!/bin/bash

# Power menu options
option=$(echo -e "⏻ Shutdown\n⏾ Reboot\n⏸ Suspend\n󰗽 Hibernate\n󰍃 Logout\n Lock" | rofi -dmenu -i -p "Power Menu" -theme-str 'window {width: 300px;}')

case "$option" in
    "⏻ Shutdown")
        systemctl poweroff
        ;;
    "⏾ Reboot")
        systemctl reboot
        ;;
    "⏸ Suspend")
        systemctl suspend
        ;;
    "󰗽 Hibernate")
        systemctl hibernate
        ;;
    "󰍃 Logout")
        i3-msg exit
        ;;
    " Lock")
        i3lock -c 000000
        ;;
    *)
        ;;
esac