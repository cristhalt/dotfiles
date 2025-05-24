{ pkgs, ... }: {
  imports = [
    ./hyprland.nix
    ./hyprpaper.nix
  ];

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
      xdg-desktop-portal-gnome
    ];
  };

  programs.rofi.enable = true;
}
