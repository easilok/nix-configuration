{
  config,
  lib,
  pkgs,
  ...
}: {
  environment.localBinInPath = true;

  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;
    autosuggestions.enable = true;
    enableCompletion = true;
  };

  users.users.nixos.shell = pkgs.zsh;
  users.users.nixos.packages = with pkgs; [
    neovim
    starship
    # nix formatter
    alejandra
    nodejs_20
    # nodejs global packages
    typescript
    nodePackages.typescript-language-server
    vscode-langservers-extracted
  ];
}
