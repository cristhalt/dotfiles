{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    "$mod" = "Super_L";

    bindm = [
      "$mod, mouse:272, movewindow"
      "$mod, mouse:273, resizewindow"
      "$mod ALT, mouse:272, resizewindow"
    ];

    bind = [
      "Control_L Alt_L, Delete, exec, loginctl terminate-user \"\""
      "$mod, q, killactive,"
      "$mod, f, fullscreen,"
      "$mod, g, togglegroup,"
      "$mod, t, togglefloating,"
      "$mod, r, togglesplit,"

      "$mod, left, movefocus, l"
      "$mod, right, movefocus, r"
      "$mod, up, movefocus, u"
      "$mod, down, movefocus, d"

      # Workspaces
      "$mod, ampersand, workspace, 1"
      "$mod, eacute, workspace, 2"
      "$mod, quotedbl, workspace, 3"
      "$mod, apostrophe, workspace, 4"
      "$mod, parenleft, workspace, 5"
      "$mod, egrave, workspace, 6"
      "$mod, minus, workspace, 7"
      "$mod, underscore, workspace, 8"
      "$mod, ccedilla, workspace, 9"
      "$mod, agrave, workspace, 10"

      # Send to Workspaces
      "$mod Shift_L, ampersand, movetoworkspace, 1"
      "$mod Shift_L, eacute, movetoworkspace, 2"
      "$mod Shift_L, quotedbl, movetoworkspace, 3"
      "$mod Shift_L, apostrophe, movetoworkspace, 4"
      "$mod Shift_L, parenleft, movetoworkspace, 5"
      "$mod Shift_L, egrave, movetoworkspace, 6"
      "$mod Shift_L, minus, movetoworkspace, 7"
      "$mod Shift_L, underscore, movetoworkspace, 8"
      "$mod Shift_L, ccedilla, movetoworkspace, 9"
      "$mod Shift_L, agrave, movetoworkspace, 10"

      # Sound
      ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      ", XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
      ", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"

      # Programs
      "$mod, r, exec, pkill rofi || rofi -show drun -run-command \"uwsm app -- {cmd}\""
      "Control_L Alt_L, t, exec, uwsm app -- kitty"
    ];
  };
}
