{
  pkgs,
  ...
}:
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
    ../../modules/nixos/services/pipewire.nix
    ../../modules/nixos/services/printing.nix
    ../../modules/nixos/services/ssh.nix
    ../../modules/nixos/services/tailscale.nix
    ../../modules/nixos/services/xserver.nix
    ../../modules/nixos/services/libinput.nix
    ../../modules/nixos/services/flatpak.nix
    ../../modules/nixos/core/bootloader.nix
    ../../modules/nixos/core/networking.nix
    ../../modules/nixos/core/locale.nix
    ../../modules/nixos/core/users.nix
    ../../modules/nixos/core/nix.nix
    ../../modules/nixos/core/packages.nix
    ../../modules/nixos/core/programs.nix
  ];

  system.stateVersion = "25.05";

  nixpkgs.config = {
    allowBroken = true;
    permittedInsecurePackages = [
      "electron-35.7.5"
    ];
  };

  environment.variables = {
    LD_LIBRARY_PATH = "${pkgs.lib.makeLibraryPath [ pkgs.cudaPackages.cudatoolkit ]}";
    CUDA_VISIBLE_DEVICES = "0";
  };

}
