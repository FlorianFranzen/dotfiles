#!/usr/bin/env bash

git clone https://github.com/andsens/homeshick.git "$HOME/.zplug/repos/andsens/homeshick/"
source "$HOME/.zplug/repos/andsens/homeshick/homeshick.sh"

homeshick clone --batch syl20bnr/spacemacs

homeshick clone git@github.com:FloFra/dotfiles
