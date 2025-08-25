{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    scrot
    xbomb
    ace-of-penguins
  ];
}
