{ config, pkgs, ... }:
{
  stylix = {
    enable = true;

    image = ../../../themes/ultraviolet/alyssa.png;

    base16Scheme = ../../../themes/ultraviolet/ultraviolet.yaml;
  };
}
