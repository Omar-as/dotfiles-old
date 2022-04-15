#!/usr/bin/env bash

selected=$(echo "suspend
hibernate
shutdown" | rofi -dmenu "power menu")

if [[ "$selected" == "suspend" ]]
then
		systemctl suspend
fi

if [[ "$selected" == "hibernate" ]]
then
		systemctl hibernate
fi

if [[ "$selected" == "shutdown" ]]
then
		systemctl poweroff
fi
