{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    docker
    lazydocker
    docker-compose
  ];
  virtualisation.docker.enable = true;
}
