#!/bin/bash

git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
source $HOME/.homesick/repos/homeshick/homeshick.sh

homeshick clone --batch robbyrussell/oh-my-zsh
homeshick clone --batch ingydotnet/git-subrepo
homeshick clone --batch trogdoro/xiki

homeshick clone git@github.com:FloFra/dotfiles
