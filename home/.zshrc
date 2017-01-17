export ZSH=$HOME/.homesick/repos/oh-my-zsh
export ZSH_THEME="agnoster"

# Base plugins
plugins=(bgnotify common-aliases colored-man-page history-substring-search jump git pass systemd)

# Distribution based plugins
case "$(lsb_release -is)" in
    Arch)
        plugins+=archlinux
    ;;
    Ubuntu)
        plugins+=ubuntu
    ;;	
esac

# Installed programms plugins
hash docker 2>/dev/null && plugins+=docker
hash task 2>/dev/null && plugins+=taskwarrior


source $ZSH/oh-my-zsh.sh

for subconf in ~/.zshrc.d/*.zsh; do 
    source $subconf; 
done
