{ config, pkgs, ... }:

let
  colors = config.stylix.colors or {
    base00 = "#050505";
    base05 = "#5f5f5f";
    base08 = "#cf01ed";
    base0D = "#5e01ed";
    base0E = "#4301ed";
    base0C = "#7501ed";
    base07 = "#bcbcbc";
  };
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
