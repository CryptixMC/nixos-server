{ config, pkgs, ... }:

let
  colors = config.lib.stylix.colors;
in
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

    style = ''
      * {
        background: ${colors.base00};
        color: ${colors.base07};
        border-radius: 8px;
        font-family: "JetBrainsMono Nerd Font", monospace;
      }
      #clock { color: ${colors.base08}; }
      #battery { color: ${colors.base0D}; }
      #cpu, #memory, #temperature { color: ${colors.base0E}; }
      #network { color: ${colors.base0C}; }
    '';
  };
}
