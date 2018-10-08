#!/usr/bin/env bash

SHELL_COLOR_THEME="$HOME/.cache/wal/colors.sh"
if [ -e "$SHELL_COLOR_THEME" ]; then 
  source "$SHELL_COLOR_THEME"
fi

# Specifying the icon(s) in the script
# This allows us to change its appearance conditionally
icon=""

if systemctl is-active --user --quiet redshift; then
    echo "%{F$COLOR5}$icon"
else
    echo "%{F$COLOR7}$icon"
fi
