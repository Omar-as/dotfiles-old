#!/usr/bin/env bash

selected=$(echo -e "suspend\nhibernate\nlock\nreboot\nshutdown" | rofi -dmenu "power menu")

if [[ "$selected" == "lock" ]]
then
		physlock
elif [[ "$selected" == "shutdown" || "$selected" == "reboot" ]]
then
		choice=$(echo -e "no\nyes" | rofi -dmenu "are you sure")
		if [[ "$choice" == "yes" ]]
		then
				systemctl $selected
		fi
else
	systemctl $selected
fi
