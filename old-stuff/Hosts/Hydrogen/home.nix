{ pkgs,... }:

{
  home.username = "cryptix";
  home.homeDirectory = "/home/cryptix";

  imports = [
    ../../Modules/home-manager/apps/git.nix
    ../../Modules/home-manager/shell/zsh.nix
    ../../Modules/home-manager/wm/hyprland.nix
  ];

  home.packages = [
    pkgs.gcc
    pkgs.bottom
    pkgs.eza
    pkgs.fd
    pkgs.onefetch
  ];

  home.file = {

  };

  programs = {
    kitty.enable = true;
    wofi.enable = true;
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}
