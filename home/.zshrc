source ~/.homesick/repos/zplug/init.zsh

# Load color scheme
(cat ~/.cache/wal/sequences &)

# OMZ Base plugins
zplug "plugins/bgnotify", from:oh-my-zsh
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/colored-man-page", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/systemd", from:oh-my-zsh
zplug "plugins/emacs", from:oh-my-zsh

# zsh-user base plugins
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"

zplug "chrissicool/zsh-256color"
zplug "MichaelAquilina/zsh-you-should-use"

# Installed programms plugins
hash nix-shell 2>/dev/null && zplug "chisui/zsh-nix-shell"
hash pass 2>/dev/null && zplug "plugins/pass", from:oh-my-zsh
hash task 2>/dev/null && zplug "plugins/taskwarrior", from:oh-my-zsh
hash docker 2>/dev/null && zplug "plugins/docker", from:oh-my-zsh

# Load custom extensions
zplug "~/.zshrc.d", from:local, use:"*.zsh"

# Set up theme
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, as:theme
#zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme

# Syntax highlighting
zplug "zsh-users/zsh-syntax-highlighting"

# Finalize
zplug load

# Install plugins if there are plugins that have not been installed
if ! zplug check; then
    printf "Install missing? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Use auto suggestion for history search
if [[ "${terminfo[kcuu1]}" != "" ]]; then
  autoload -U up-line-or-beginning-search
  zle -N up-line-or-beginning-search
  bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
fi

if [[ "${terminfo[kcud1]}" != "" ]]; then
  autoload -U down-line-or-beginning-search
  zle -N down-line-or-beginning-search
  bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
fi
