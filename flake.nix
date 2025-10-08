{
  description = "My NixOS Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix.url = "github:danth/stylix";

    zen-browser.url = "github:0xc000022070/zen-browser-flake";
    zen-browser.inputs.nixpkgs.follows = "nixpkgs";
    zen-browser.inputs.home-manager.follows = "home-manager";

  };

  outputs = { self, nixpkgs, home-manager, stylix, ... }@inputs:
  let
    system = "x86_x64-linux";
  in
  {
    nixosConfigurations = {
      carbon = nixpkgs.lib.nixosSystem {
        modules = [
          ./hosts/carbon/configuration.nix
          stylix.nixosModules.stylix
        ];
      };
    };
    homeConfigurations = {
      cryptix = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        modules = [
          ./hosts/carbon/home.nix
          stylix.homeModules.stylix
        ];
        extraSpecialArgs = { inherit inputs; };
      };
    };
  };
}
