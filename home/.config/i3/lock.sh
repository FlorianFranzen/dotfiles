#!/usr/bin/env bash
source ~/.cache/wal/colors.sh

exec i3lock-color \
  --timecolor=${color7:1}FF \
  --datecolor=${color7:1}FF \
  --insidecolor=${color0:1}AA \
  --ringcolor=${color4:1}DD \
  --linecolor=${color8:1}EE \
  --separatorcolor=${color3:1}EE \
  --keyhlcolor=${color6:1}EE \
  --bshlcolor=${color5:1}EE \
  --verifcolor=${color6:1}FF \
  --insidevercolor=${color1:1}AA \
  --ringvercolor=${color7:1}DD \
  --wrongcolor=${color8:1}FF \
  --insidewrongcolor=${color2:1}AA \
  --ringwrongcolor=${color8:1}DD \
  --indicator --clock --blur 3 \
  --ignore-empty-password \
  --nofork
