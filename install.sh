#!/bin/bash

git clone https://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
source $HOME/.homesick/repos/homeshick/homeshick.sh

homeshick clone --batch zplug/zplug
homeshick clone --batch syl20bnr/spacemacs
homeshick clone --batch ingydotnet/git-subrepo

homeshick clone git@github.com:FloFra/dotfiles
