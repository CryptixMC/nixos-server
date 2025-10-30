{ ... }:
{
  programs.ghostty = {
    enable = true;
    settings = {
      theme = "ultraviolet";
    };
    themes = {
      ultraviolet = {
        background = "050505";
        cursor-color = "bcbcbc";
        foreground = "5f5f5f";
        palette = [
          "0=#212121" # base03 (black)
          "1=#cf01ed" # base08 (red)
          "2=#8701ed" # base0B (green)
          "3=#9901ed" # base0A (yellow)
          "4=#5e01ed" # base0D (blue)
          "5=#4301ed" # base0E (magenta)
          "6=#7501ed" # base0C (cyan)
          "7=#bcbcbc" # base07 (white)
          "8=#373737" # base04 (bright black)
          "9=#ab01ed" # base09 (bright red)
          "10=#0f0f0f" # base02 (bright green)
          "11=#080808" # base01 (bright yellow)
          "12=#777777" # base06 (bright blue)
          "13=#1b01ed" # base0F (bright magenta)
          "14=#080808" # base01 (bright cyan)
          "15=#777777" # base06 (bright white)
        ];
        selection-background = "212121";
        selection-foreground = "bcbcbc";
      };
    };
  };
}
