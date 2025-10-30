{ config, pkgs, ...}:
{
  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    kitty
<<<<<<< HEAD
=======
    #waybar
>>>>>>> experimental
    hyprpaper
    wofi
    xcursor-pro
    kanshi
    walker
    pavucontrol
  ];
}
