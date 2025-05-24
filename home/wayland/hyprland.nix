{ ... }: {
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    settings = {
      misc = {
        disable_hyprland_logo = true;
        vrr = 1;
      };

      general = {
        gaps_in = 4;
        gaps_out = 8;
      };

      decoration = {
        rounding = 8;
        rounding_power = 4.0;
      };

      # Keybinds
      bind = [
        "Super, Q, killactive"
        "Super_Shift, Q, forcekillactive"

        # Workspaces
        "Super, code:10, workspace, 1"
        "Super, code:11, workspace, 2"
        "Super, code:12, workspace, 3"
        "Super, code:13, workspace, 4"
        "Super, code:14, workspace, 5"
        "Super, code:15, workspace, 6"
        "Super, code:16, workspace, 7"
        "Super, code:17, workspace, 8"
        "Super, code:18, workspace, 9"
        "Super, code:19, workspace, 10"

        "Super_Shift, code:10, movetoworkspace, 1"
        "Super_Shift, code:11, movetoworkspace, 2"
        "Super_Shift, code:12, movetoworkspace, 3"
        "Super_Shift, code:13, movetoworkspace, 4"
        "Super_Shift, code:14, movetoworkspace, 5"
        "Super_Shift, code:15, movetoworkspace, 6"
        "Super_Shift, code:16, movetoworkspace, 7"
        "Super_Shift, code:17, movetoworkspace, 8"
        "Super_Shift, code:18, movetoworkspace, 9"
        "Super_Shift, code:19, movetoworkspace, 10"

        # Sound control
        ", XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
        ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        ", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"

        # Brightness control
        ", XF86MonBrightnessUp, exec, brightnessctl set +5%"
        ", XF86MonBrightnessDown, exec, brightnessctl set 5%-"

        # App launch
        "Super, R, exec, rofi -show drun -run-command \"uwsm app -- {cmd}\""
      ];

      bindm = [
        "Super, mouse:272, movewindow"
        "Super, mouse:273, resizewindow"
      ];
    };
  };
}
