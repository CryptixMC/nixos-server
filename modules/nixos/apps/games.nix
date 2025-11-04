{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    prismlauncher
    gfn-electron
    lutris
  ];

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };
}
