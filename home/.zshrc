export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="agnoster"

plugins=(bgnotify catimg common-aliases colored-man-pages history-substring-search jump git pass taskwarrior ubuntu)

source $ZSH/oh-my-zsh.sh

for f in ~/.zshrc.d/*.zsh; do 
    source $f; 
done
