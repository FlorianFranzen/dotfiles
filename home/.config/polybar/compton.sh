#!/usr/bin/env bash

SHELL_COLOR_THEME="$HOME/.cache/wal/colors.sh"
if [ -e "$SHELL_COLOR_THEME" ]; then 
  source "$SHELL_COLOR_THEME"
fi

#The icon that would change color
icon=""

if systemctl is-active --user --quiet compton; then
	echo "%{F$color7}$icon"
else
	echo "%{F$color5}$icon"
fi
