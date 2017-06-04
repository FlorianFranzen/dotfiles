zx() {
  if [ -z "$1" ]; then
    echo "usage: $0 <group>"
    return
  fi

  if [ ! -d "$HOME/.zx/$1" ]; then
    echo "unknown extension environment '$1'"
    return
  fi

  for subconf in $HOME/.zx/$1/*.zsh; do
    source $subconf
  done
}
