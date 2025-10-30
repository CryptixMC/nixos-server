{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    podman
    distrobox
    nh
    git
    ollama
    foliate
    protonvpn-gui
    unzip
    direnv
    nix-direnv
    flameshot
    python311
    xwayland
    lazygit
    celeste
    onlyoffice-desktopeditors
    discord
    qbittorrent
  ];
}
