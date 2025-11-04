{ ... }:

{
  # Minimal Home Manager config for a server
  home.username = "cryptix";
  home.homeDirectory = "/home/cryptix";
  home.stateVersion = "25.05";

  programs.home-manager.enable = true;

  # Add minimal user-level packages or config here if needed
}
