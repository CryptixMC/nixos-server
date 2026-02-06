{ config, pkgs, ... }:

let
  lib = pkgs.lib;
in
{
  environment.systemPackages = with pkgs; [ docker docker-compose ];

  virtualisation.docker.enable = true;

  virtualisation.docker.containers = {
    n8n = {
      image = "n8nio/n8n:latest";
      ports = [ "5678:5678" ];
      volumes = [ "/var/lib/n8n:/home/node/.n8n" ];
      restartPolicy = "always";
      environment = {
        N8N_HOST = "0.0.0.0";
        N8N_PORT = "5678";
        DB_TYPE = "sqlite";
        N8N_BASIC_AUTH_ACTIVE = "true";
        N8N_BASIC_AUTH_USER = "admin";
        N8N_BASIC_AUTH_PASSWORD = "changeme";
      };
    };
  };

  systemd.tmpfiles.rules = [ "d /var/lib/n8n 0755 root root -" ];

  networking.firewall.allowedTCPPorts = lib.mkDefault ((config.networking.firewall.allowedTCPPorts or []) ++ [ 5678 ]);
}
