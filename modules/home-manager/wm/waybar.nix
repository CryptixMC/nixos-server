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

  };

}
