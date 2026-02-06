{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  system.stateVersion = "25.05";

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";

  networking.hostName = "nixos-server";
  networking.useDHCP = true;

  environment.systemPackages = with pkgs; [
    vim
    wget
    curl
    git
    nh
  ];

  services.openssh.enable = true;
}
