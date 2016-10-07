export ZSH=$HOME/.homesick/repos/oh-my-zsh
export ZSH_THEME="agnoster"


plugins=(bgnotify common-aliases colored-man-pages history-substring-search jump git pass safe-paste systemd taskwarrior)

case "$(lsb_release -is)" in
    Arch)
        plugins=($plugins archlinux)  
    ;;
    Ubuntu)
	plugins=($plugins ubuntu)
    ;;	
esac
 
source $ZSH/oh-my-zsh.sh

for subconf in ~/.zshrc.d/*.zsh; do 
    source $subconf; 
done
