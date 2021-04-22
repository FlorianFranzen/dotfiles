alias nixos-env="sudo nix-env -p /nix/var/nix/profiles/system"

function nix-call() {
  nixfile="$1"
  shift
  nix-build -E "with import <nixpkgs> {}; callPackage $nixfile {}" $@
}

function nix-cenv() {
  nixfile="$1"
  shift
  nix-env -E "_: with import <nixpkgs> {}; callPackage $nixfile {}" $@
}

function nix-qtcall() {
  nixfile="$1"
  shift
  nix-build -E "with import <nixpkgs> {}; libsForQt5.callPackage $nixfile {}" $@
}


alias nixpkgs-shell="nix-shell '<nixpkgs>'"

alias nixos-versions="cat /nix/var/nix/profiles/system-*-link/nixos-version"

alias ,="NIX_AUTORUN=1"
