{ config, pkgs, ... }:
{
  stylix = {
    enable = true;

    image = ../../themes/ultraviolet/alyssa.png;
    base16Scheme = ../../themes/ultraviolet/ultraviolet.yaml;
    polarity = "dark";
    fonts = {
      monospace = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrainsMono Nerd Font Mono";
      };
      sansSerif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Sans";
      };
      serif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Serif";
      };
    };
  };
}
