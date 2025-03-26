{ ... }: {
  wayland.windowManager.hyprland.settings.bind = [
    "SUPER, R, exec, rofi -show drun"
    "CTRL ALT, Delete, exec, hyprctl dispatch exit 0"
    "SUPER, Q, exec, kitty"
    "SUPER, C, killactive, "
  ];
}
