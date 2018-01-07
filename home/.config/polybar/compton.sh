#!/bin/bash

source "$HOME/.colors"

#The icon that would change color
icon=""

if pgrep -x "compton" > /dev/null
then
	echo "%{F$COLOR7}$icon"
else
	echo "%{F$COLOR5}$icon"
fi
