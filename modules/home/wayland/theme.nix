{ pkgs, inputs, ... }:
{
  imports = [ inputs.catppuccin.homeManagerModules.catppuccin ];

  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    name = "Bibata-Modern-Ice";
    size = 26;
    package = pkgs.bibata-cursors;
  };

  dconf = {
    enable = true;
    settings = {
      "org/gnome/desktop/interface" = {
        cursor-theme = "Bibata-Modern-Ice";
        cursor-size = 26;
      };
    };
  };

  catppuccin = {
    gtk = {
      enable = true;
      flavor = "mocha";
      accent = "teal";
      size = "standard";
      tweaks = [ "normal" ];
    };
  };

  gtk = {
    enable = true;
    font.name = "JetBrainsMono Nerd Font";
    iconTheme = {
      name = "Tela-circle";
      package = pkgs.tela-circle-icon-theme;
    };
  };
}
