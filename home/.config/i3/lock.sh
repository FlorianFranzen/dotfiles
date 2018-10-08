#!/usr/bin/env bash
source ~/.cache/wal/colors.sh

exec i3lock-color --timecolor=${color15:1}FF \
                  --datecolor=${color15:1}FF \
            --textcolor=${color15:1}FF \
            --ringcolor=${color13:1}DD \
            --insidecolor=${color1:1}AA \
            --keyhlcolor=${color15:1}EE \
            --bshlcolor=${color14:1}EE \
            --ringvercolor=${color8:1}DD \
            --insidevercolor=${color8:1}AA \
            --ringwrongcolor=${color12:1}DD \
            --insidewrongcolor=${color12:1}AA \
            --linecolor=${color2:1}EE \
            --separatorcolor=${color3:1}EE \
            -k --blur 3 \
            --nofork
