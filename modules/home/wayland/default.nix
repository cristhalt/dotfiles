{ pkgs, config, ... }:
{
  imports = [
    ./hyprland/default.nix
    ./hyprpaper.nix
    ./rofi.nix
    ./theme.nix
  ];

  xdg.portal = {
    enable = true;
    config.hyprland.preferred = [
      "hyprland"
      "termfilechooser"
      "gtk"
    ];
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
      xdg-desktop-portal-termfilechooser
      xdg-desktop-portal-gtk
    ];
  };

  home.file."${config.xdg.configHome}/xdg-desktop-portal-termfilechooser/config".text = ''
    [filechooser]
    cmd=${pkgs.xdg-desktop-portal-termfilechooser}/share/xdg-desktop-portal-termfilechooser/yazi-wrapper.sh
    default_dir=$HOME
    env=TERMCMD=kitty -T "${pkgs.xdg-desktop-portal-termfilechooser}/share/xdg-desktop-portal-termfilechooser/yazi-wrapper.sh"
  '';

  services.dunst.enable = true;
}
