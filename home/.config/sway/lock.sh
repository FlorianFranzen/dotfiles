#!/usr/bin/env bash
source ~/.cache/wal/colors.sh

exec swaylock \
  --indicator-radius=100 \
  --indicator-thickness=20 \
  --color=${color0:1}FF \
  --inside-color=${color0:1}AA \
  --ring-color=${color4:1}DD \
  --line-color=${color8:1}EE \
  --separator-color=${color3:1}EE \
  --key-hl-color=${color6:1}EE \
  --bs-hl-color=${color5:1}EE \
  --text-ver-color=${color6:1}FF \
  --inside-ver-color=${color1:1}AA \
  --ring-ver-color=${color7:1}DD \
  --text-wrong-color=${color8:1}FF \
  --inside-wrong-color=${color2:1}AA \
  --ring-wrong-color=${color8:1}DD \
  --text-clear-color=${color8:1}FF \
  --inside-clear-color=${color2:1}AA \
  --ring-clear-color=${color8:1}DD \
  --ignore-empty-password 
