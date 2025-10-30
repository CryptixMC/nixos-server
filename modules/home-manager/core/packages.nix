{ pkgs, ... }:
{
  home.packages = with pkgs; [
    neovim
    prismlauncher
    brightnessctl
    zed-editor-fhs
    nixd
    nil
    vinegar
  ];
}
