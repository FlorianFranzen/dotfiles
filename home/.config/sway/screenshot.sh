#!/bin/sh
grim "$HOME/$(date +screenshot_%F_%T.png)" && notify-send "Screenshot was saved"
