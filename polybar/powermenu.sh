#!/bin/bash

# Define the power menu actions
chosen=$(echo -e "Logout\nReboot\nPower Off\nHibernate" | rofi -dmenu -i -p "Power Menu:")

case "$chosen" in
    Logout)
        # Command to logout
        i3-msg exit
        ;;
    Reboot)
        # Command to reboot
        systemctl reboot
        ;;
    Power\ Off)
        # Command to power off
        systemctl poweroff
        ;;
    Hibernate)
        # Command to hibernate
        systemctl hibernate
        ;;
esac
