{ pkgs, inputs, ... }:
{
  imports = [
      #../../modules/home-manager/apps/ghostty.nix
      ../../modules/home-manager/wm/hyprland.nix
      #../../modules/home-manager/wm/waybar.nix
      ../../modules/home-manager/apps/zen-browser.nix
      ../../modules/nixos/style/stylix.nix
  ];

  home.username = "cryptix";
  home.homeDirectory = "/home/cryptix";
  home.stateVersion = "25.05";

  home.packages = with pkgs; [
    neovim
    prismlauncher
  ];

  home.file = {

  };

  home.sessionVariables = {

  };

  programs.home-manager.enable = true;
}
