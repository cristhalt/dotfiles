{ pkgs, ... }: {
  home.packages = with pkgs; [ bibata-cursors ];
  home.sessionVariables = { XCURSOR_THEME = "Bibata-Modern-Ice"; };
  dconf = {
    enable = true;
    settings = {
      "org/gnome/desktop/interface" = { cursor-theme = "Bibata-Modern-Ice"; };
    };
  };
}
