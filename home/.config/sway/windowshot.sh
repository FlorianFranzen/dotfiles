#!/bin/sh
grim -g "$(swaymsg -t get_tree | jq -r '.. | select(.pid? and .visible?) | .rect | "\(.x),\(.y) \(.width)x\(.height)"' | slurp)" "$HOME/$(date +screenshot_%F_%T.png)" && notify-send "Window selection was saved"
