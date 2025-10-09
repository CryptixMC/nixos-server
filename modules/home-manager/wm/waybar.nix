{ config, pkgs, ... }:
{
  programs.waybar = {
    enable = true;

    settings = [{
      layer = "top";
      position = "top";
      modules-left = [ "hyprland/workspaces" "hyprland/window" ];
      modules-center = [ "clock" ];
      modules-right = [ "network" "cpu" "memory" "temperature" "battery" "tray" ];

      clock = {
        format = "{:%a %d %b %H:%M}";
        tooltip-format = "{:%Y-%m-%d %H:%M:%S}";
      };
      cpu = { format = "CPU {usage}%"; };
      memory = { format = "RAM {used:0.1f}G"; };
      battery = {
        format = "{capacity}% {icon}";
        icons = [ "" "" "" "" "" ];
      };
      network = {
        format-wifi = " {essid} ({signalStrength}%)";
        format-ethernet = " {ifname}";
      };
      temperature = {
        critical-threshold = 80;
        format = "{temperatureC}°C";
      };
      tray = { };
    }];
  };
}
