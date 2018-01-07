#!/bin/bash

# Keyboard fixes
xmodmap -e "clear Lock"
xmodmap -e "keycode 66 = Tab"

# Mouse fixes
synclient TapButton1=0 TapButton2=0 TapButton3=0 RTCornerButton=0

# User services
lxpolkit &

# File syncing
dropbox start &
nextcloud &

# Communication
env KEYBASE_START_UI=hideWindow run_keybase &
slack -u --disable-gpu &
