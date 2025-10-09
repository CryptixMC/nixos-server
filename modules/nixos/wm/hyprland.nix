{ config, pkgs, ...}:
{
  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    kitty
    #waybar
    hyprpaper
    wofi
    xcursor-pro
    kanshi
    walker
  ];
}
