{ pkgs, ... }:
{
  home.packages = with pkgs; [
    neovim
    prismlauncher
    brightnessctl
    nixd
    nil
    vinegar
  ];
}
