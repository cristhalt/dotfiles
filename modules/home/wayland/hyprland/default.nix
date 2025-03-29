{ ... }:
{
  imports = [
    ./keybind.nix
    ./visual.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      input = {
        kb_layout = "fr";
        touchpad = {
          natural_scroll = "yes";
          disable_while_typing = true;
          drag_lock = true;
        };
      };
    };
  };
}
