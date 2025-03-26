{ ... }: {
  imports = [ ./keybind.nix ./visual.nix ];

  wayland.windowManager.hyprland = {
    enable = true;

    settings = {
      exec-once = [ "waybar" "hyprpaper" ];

      input = {
        kb_layout = "fr";
        touchpad = {
          natural_scroll = "yes";
          disable_while_typing = true;
          drag_lock = true;
        };
      };

      env = [ "HYPRCURSOR_THEME,Bibata-Modern-Ice" ];
    };
  };
}
