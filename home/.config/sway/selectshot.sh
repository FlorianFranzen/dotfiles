#!/bin/sh
grim -g "$(slurp)" "$HOME/$(date +screenshot_%F_%T.png)" && notify-send "Screen selection was saved"
