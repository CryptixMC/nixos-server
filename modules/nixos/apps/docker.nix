{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    docker
    lazydocker
  ];
  virtualisation.docker.enable = true;
}
