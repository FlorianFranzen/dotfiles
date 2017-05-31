#!/bin/bash

git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
source $HOME/.homesick/repos/homeshick/homeshick.sh

homeshick clone --batch zsh-users/antigen
homeshick clone --batch syl20bnr/spacemacs
homeshick clone --batch ingydotnet/git-subrepo

homeshick clone git@github.com:FloFra/dotfiles
