#!/bin/bash
source ~/.colors

exec i3lock --timecolor=${COLOR15:1}FF \
            --datecolor=${COLOR15:1}FF \
            --textcolor=${COLOR15:1}FF \
            --ringcolor=${COLOR13:1}DD \
            --insidecolor=${COLOR1:1}AA \
            --keyhlcolor=${COLOR15:1}EE \
            --bshlcolor=${COLOR14:1}EE \
            --ringvercolor=${COLOR8:1}DD \
            --insidevercolor=${COLOR8:1}AA \
            --ringwrongcolor=${COLOR12:1}DD \
            --insidewrongcolor=${COLOR12:1}AA \
            --linecolor=${COLOR2:1}EE \
            --separatorcolor=${COLOR3:1}EE \
            -k --blur 3
