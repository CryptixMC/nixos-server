{ pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/nixos/hardware/fprintd.nix
    ../../modules/nixos/hardware/nvidia.nix
    ../../modules/nixos/wm/gnome.nix
    ../../modules/nixos/wm/hyprland.nix
    ../../modules/nixos/apps/games.nix
    ../../modules/nixos/apps/virtualization.nix
    ../../modules/nixos/apps/docker.nix
    ../../modules/temp.nix
    ../../modules/style/stylix.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "carbon";

  networking.networkmanager.enable = true;

  time.timeZone = "America/Winnipeg";

  i18n.defaultLocale = "en_CA.UTF-8";

  services.xserver.enable = true;

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  services.printing.enable = true;

  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  services.libinput.enable = true;

  users.users.cryptix = {
    isNormalUser = true;
    description = "cryptix";
    extraGroups = [
      "networkmanager"
      "wheel"
      "docker"
    ];
    shell = pkgs.zsh;
  };

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  programs.firefox.enable = true;

  nixpkgs.config.allowUnfree = true;

  programs.zsh.enable = true;

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

  services.openssh.enable = true;
  services.tailscale.enable = true;

  system.stateVersion = "25.05";

}
