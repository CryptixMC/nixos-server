{ ... }:

{
  imports = [
    ./hardware-configuration.nix
    # Add minimal server modules here if needed, e.g. SSH
    # ../../modules/nixos/services/ssh.nix
  ];

  system.stateVersion = "25.05";

  # Optional: Nixpkgs config for server use
  nixpkgs.config = {
    allowUnfree = true;
  };
}
