{ config, pkgs, lib, ... }:

let
/*colors = config.lib.stylix.colors; or {
    base00 = "#050505";
    base05 = "#5f5f5f";
    base08 = "#cf01ed";
    base0D = "#5e01ed";
    base0E = "#4301ed";
    base0C = "#7501ed";
    base07 = "#bcbcbc";
  };'' */
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

    style = lib.mkAfter ''
      * {
        background: @base00;
        color: @base07;
        border-radius: 8px;
        font-family: "JetBrainsMono Nerd Font", monospace;
      }
      #clock { color: @base08; }
      #battery { color: @base08; }
      #cpu, #memory, #temperature { color: @base08; }
      #network { color: @base08; }
    '';
  };
}
