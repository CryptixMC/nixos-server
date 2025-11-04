{
  description = "Minimal NixOS Server Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      nixpkgs,
      home-manager,
      ...
    }:
    {
      nixosConfigurations = {
        carbon = nixpkgs.lib.nixosSystem {
          modules = [
            ./hosts/carbon/configuration.nix
          ];
        };
      };

      homeConfigurations = {
        cryptix = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          modules = [
            ./hosts/carbon/home.nix
          ];
        };
      };
    };
}
