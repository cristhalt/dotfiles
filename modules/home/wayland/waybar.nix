{ ... }: {
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 45;

        modules-left = [ "custom/launcher" ];
        modules-right = [ "cpu" "memory" ];

        "custom/launcher" = {
          format = "{}";
          exec = "echo ";
          on-click = "rofi -show drun";
          tooltip = false;
        };
        cpu = {
          format = " {usage}%";
          tooltip = true;
        };
        memory = {
          format = " {}%";
          tooltip = true;
        };
      };
    };
    style = ''
      @define-color text #cdd6f4;
      @define-color base #1e1e2e;
      @define-color mantle #181825;

      * {
        border: none;
        font-family: 'JetBrainsMono Nerd Font', monospace;
        font-size: 12px;
      }

      window#waybar {
        background: @mantle;
        color: @text;
      }

      #cpu,
      #memory,
      #custom-launcher {
       	border-radius: 14px;
       	color: @text;
       	background: @base;
        padding: 0 12px;
      }
    '';
  };
}
