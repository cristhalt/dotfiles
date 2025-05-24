{ inputs, system, pkgs, ... }: {
  imports = [
    ./kitty.nix
    ./wayland/default.nix
    ./dev/default.nix
  ];

  home.packages = [
    pkgs.brightnessctl
    pkgs.nautilus
    inputs.zen-browser.packages."${system}".default
  ];

  programs.micro.enable = true;

  home.stateVersion = "25.05";
}
