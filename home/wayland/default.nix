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

  services.dunst.enable = true;

  services.polkit-gnome.enable = true;

  programs.rofi.enable = true;
}
