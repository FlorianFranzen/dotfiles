#!/usr/bin/env bash

export HOMESHICK_DIR="$HOME/.zplug/repos/andsens/homeshick/"
git clone https://github.com/andsens/homeshick.git "$HOMESHICK_DIR"
source "$HOMESHICK_DIR/homeshick.sh"

homeshick clone --batch syl20bnr/spacemacs

homeshick clone git@github.com:FlorianFranzen/dotfiles
