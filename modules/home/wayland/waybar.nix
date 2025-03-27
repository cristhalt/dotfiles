{ ... }: {
  programs.waybar = {
    enable = true;
    settings = [{
      layer = "top";
      position = "top";

      modules-left = [ "custom/launcher" ];
      modules-right = [ "bluetooth" "network" "battery" ];

      "custom/launcher" = {
        format = "";
        tooltip = false;
        on-click = "pkill rofi || rofi -show drun";
      };

      bluetooth = { format-no-controller = ""; };

      network = {
        format-wifi = "";
        format-ethernet = "";
        format-disconnected = "";
        tooltip-format-wifi = "{essid} ({signalStrength}%)";
        tooltip-format-ethernet = "{ifname}";
      };
    }];
  };
}
