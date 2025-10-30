<<<<<<< HEAD
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
=======
{ ... }:
>>>>>>> experimental
{
  programs.waybar = {
    enable = true;

    settings = [
      {
        layer = "top";
        position = "top";
        modules-left = [
          "hyprland/workspaces"
          "hyprland/window"
        ];
        modules-center = [ "clock" ];
        modules-right = [
          "network"
          "sysinfo"
          "battery"
          "backlight"
          "pulseaudio"
          "tray"
        ];

<<<<<<< HEAD
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
=======
        clock = {
          format = "{:%a %d %b %I:%M %p}";
          tooltip-format = "{:%Y-%m-%d %I:%M:%S %p}";
        };
        battery = {
          format = "{capacity}% {icon}";
          format-alt = "{icon}";
          icons = [
            ""
            ""
            ""
            ""
            ""
          ];
        };
        network = {
          format-wifi = " {essid}";
          tooltip-format-wifi = "{essid} ({signalStrength}%)";
          format-ethernet = " {ifname}";
        };
        backlight = {
          format = "☀ {percent}%";
          device = "intel_backlight"; # Change to your actual device if needed
        };
        pulseaudio = {
          format = " {volume}%";
          format-muted = " muted";
          scroll-step = 5;
        };
        tray = { };
        cpu = {
          format = "CPU {usage}%";
        };
        memory = {
          format = "RAM {used:0.1f}G";
        };
        temperature = {
          critical-threshold = 80;
          format = "{temperatureC}°C";
        };
      }
    ];

>>>>>>> experimental
  };

}
