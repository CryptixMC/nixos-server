{
  description = "NixOS configurations for CryptixMC nixos-server (flakes)";

  inputs = {
    nixpkgs.url = "nixos-25.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in {
        nixosConfigurations = {
          hydrogen = pkgs.lib.nixosSystem {
            system = system;
            modules = [
              ./hosts/hydrogen/configuration.nix
              ./modules/n8n.nix
            ];
            specialArgs = { inherit pkgs; };
          };
        };
      }
    );
}
