export ZSH=$HOME/.homesick/repos/oh-my-zsh
export ZSH_THEME="agnoster"


plugins=(bgnotify common-aliases colored-man-page history-substring-search jump git pass safe-paste systemd taskwarrior)

case "$(lsb_release -is)" in
    Arch)
        plugins=($plugins archlinux)  
    ;;
    Ubuntu)
	plugins=($plugins ubuntu)
    ;;	
esac
 
source $ZSH/oh-my-zsh.sh

# Fix safe-paste related bug
if [[ -n "$terminfo[cuu1]" ]]; then
  bindkey "$terminfo[cuu1]" history-substring-search-up
fi
if [[ -n "$terminfo[cud1]" ]]; then
  bindkey "$terminfo[cud1]" history-substring-search-down
fi

for subconf in ~/.zshrc.d/*.zsh; do 
    source $subconf; 
done
