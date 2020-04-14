alias nixos-env="sudo nix-env -p /nix/var/nix/profiles/system"

function nix-call() {
  nixfile="$1"
  shift
  nix-build -E "with import <nixpkgs> {}; callPackage $nixfile {}" $@
}
