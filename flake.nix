{
  description = "Easilok NixOs setup flake";

  inputs = {
    # NixOS official package source, using the nixos-23.11 branch here
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    nixos-wsl.url = "github:nix-community/NixOS-WSL";
    nixos-wsl.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, nixos-wsl, ... }@inputs: {
    # Please replace my-nixos with your hostname
    nixosConfigurations.nixos-wsl = nixpkgs.lib.nixosSystem {
      # hostname = "nixos-wsl";
      system = "x86_64-linux";
      modules = [
        # Import the previous configuration.nix we used,
        # so the old configuration file still takes effect
        nixos-wsl.nixosModules.wsl
        ./configuration-wsl.nix
      ];
    };
  };
}
