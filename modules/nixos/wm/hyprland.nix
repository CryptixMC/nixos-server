{ pkgs, ... }:
{
  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    kitty
    hyprpaper
    wofi
    xcursor-pro
    kanshi
    walker
    pavucontrol
  ];
}
