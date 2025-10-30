{ pkgs, ... }:
{
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
}
