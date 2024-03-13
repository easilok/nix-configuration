{
  config,
  lib,
  pkgs,
  ...
}: {
  # Install some cli packages
  environment.systemPackages = with pkgs; [
    vim
    git
    zsh
    tmux
    htop
    ripgrep
    eza
    nix-bash-completions
    bash-completion
    mlocate
    fzf
    wget
    stow
    unzip
    lf
    fd
    tldr
  ];
}
