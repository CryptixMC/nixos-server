{ inputs, ... }:

{
  imports = [
    inputs.hyprpanel.homeManagerModules.hyprpanel
  ];

  programs.hyprpanel = {
    enable = true;
    overlay.enable = true;
    hyprland.enable = true;
    overwrite.enable = true;
    
    settings = {
      menus = {
        clock.time.hideSeconds = true;
      };

      theme = {
        bar.transparent = true;

        font = {
        };
      };
    };
    
    override = {
    };
  };
}
