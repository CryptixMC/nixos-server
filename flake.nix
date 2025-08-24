{
  description = "My NixOS Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }@inputs:
  let
    system = "x86_x64-linux";
  in
  {
    nixosConfigurations = {
      carbon = nixpkgs.lib.nixosSystem {
        modules = [
          hosts/carbon/configuration.nix
        ];
      };
    };
  };
}
