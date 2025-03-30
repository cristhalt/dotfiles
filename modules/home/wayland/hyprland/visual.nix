{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {
      decoration = {
        rounding = 10;
      };

      general = {
        gaps_out = 12;
        gaps_in = 6;
        border_size = 2;
        "col.active_border" = "0x9089b4fa";
        "col.inactive_border" = "0x80585b70";
      };

      animations = {
        enabled = "yes";
        bezier = "customBezier, 0.05, 0.9, 0.1, 1.05";
        animation = [
          "windows, 1, 5, customBezier"
          "windowsOut, 1, 7, default, popin 80%"
          "border, 1, 10, default"
          "fade, 1, 7, default"
          "workspaces, 1, 6, default"
        ];
      };
    };
  };
}
