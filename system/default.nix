{
  config,
  lib,
  pkgs,
  ...
}: {
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  imports = [
    ./services.nix
    ./cli.nix
    ./dev.nix
  ];
}
