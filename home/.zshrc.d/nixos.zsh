alias nixos-env="sudo nix-env -p /nix/var/nix/profiles/system"

function nix-call() nix-build -E "with import <nixpkgs> {}; callPackage $1 {}"
