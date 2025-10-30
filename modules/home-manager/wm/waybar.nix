{ ... }:

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

        clock = {
          format = "{:%a %d %b %H:%M}";
          tooltip-format = "{:%Y-%m-%d %H:%M:%S}";
        };
        cpu = {
          format = "CPU {usage}%";
        };
        memory = {
          format = "RAM {used:0.1f}G";
        };
        battery = {
          format = "{capacity}% {icon}";
          icons = [
            ""
            ""
            ""
            ""
            ""
          ];
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
        backlight = {
          format = "☀ {percent}%";
          device = "intel_backlight";
        };
        pulseaudio = {
          format = " {volume}%";
          format-muted = " muted";
          scroll-step = 5;
        };
      }
    ];

    style = ''
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
