source ~/.homesick/repos/antigen/antigen.zsh

antigen use oh-my-zsh

# OMZ Base plugins
antigen bundles <<EOBUNDLES
  bgnotify
  common-aliases
  colored-man-page
  git
  systemd
EOBUNDLES

# zsh-user Base plugins
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle FlorianFranzen/sourcerer

# Distribution based plugins
case "$(lsb_release -is)" in
    Arch)
        antigen bundle archlinux
    ;;
    Ubuntu)
        antigen bundle ubuntu
    ;;
esac

# Installed programms plugins
hash pass 2>/dev/null && antigen bundle pass
hash task 2>/dev/null && antigen bundle taskwarrior
hash docker 2>/dev/null && antigen bundle docker

# Set enviroment variables
export EDITOR=vim
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'


# Load custom extensions
for subconf in ~/.zshrc.d/*.zsh; do 
    source $subconf; 
done
export fpath=($fpath ~/.zshrc.d)

# Set up theme
antigen theme steeef

# Finalize
antigen apply
