{
  config,
  lib,
  pkgs,
  ...
}: {
  # Install some packages
  environment.systemPackages = with pkgs; [
    gcc
  ];
}
