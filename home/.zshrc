# Load color scheme
[[ -f ~/.cache/wal/sequences ]] && (cat ~/.cache/wal/sequences &)

# Check if zplug is installed
if [[ ! -f "$HOME/.zplug/init.zsh" ]]; then
  printf "zplug missing. Install? [y/N]: "
  if read -q; then
    echo;
    git clone https://github.com/zplug/zplug "$HOME/.zplug/repos/zplug/zplug"
    ln -s "$HOME/.zplug/repos/zplug/zplug/init.zsh" "$HOME/.zplug/init.zsh"
  else
    return
  fi
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Load zplug
source $HOME/.zplug/init.zsh

# Let zplug manage zplug
zplug "zplug/zplug"

# OMZ Base plugins
#zplug "plugins/bgnotify", from:oh-my-zsh
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/colored-man-page", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/systemd", from:oh-my-zsh
zplug "plugins/emacs", from:oh-my-zsh

# zsh-user base plugins
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
#zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# User managed command line tools
export HOMESHICK_DIR="$HOME/.zplug/repos/andsens/homeshick/"
fpath=("${HOMESHICK_DIR}/completions" $fpath)
zplug "andsens/homeshick", use:"homeshick.sh"
zplug "ingydotnet/git-subrepo", use:".rc"
zplug "raylee/tldr", from:github, as:command, use:"tldr"

# On "probation"
#zplug "zsh-users/zaw"
#zplug "chrissicool/zsh-256color"
zplug "MichaelAquilina/zsh-you-should-use"

# Installed programms based plugins
#zplug "chisui/zsh-nix-shell", if:"hash nix-shell"
zplug "plugins/pass", from:oh-my-zsh, if:"hash pass"
#zplug "plugins/taskwarrior", from:oh-my-zsh, if:"hash task"
zplug "plugins/docker", from:oh-my-zsh, if:"hash docker"

# Set up theme
zplug "romkatv/powerlevel10k", use:powerlevel10k.zsh-theme

# Load custom extensions (last to load = able to overwrite anything)
zplug "~/.zshrc.d", from:local, defer:3

# Finalize
zplug load

# Install plugins if there are plugins that have not been installed
if ! zplug check; then
    printf "Install missing zsh plugin? [y/N]: "
    if read -q; then
        echo; zplug install; zplug load
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
