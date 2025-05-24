{ inputs, system, pkgs, ... }: {
  imports = [
    ./cli/default.nix
    ./wayland/default.nix
    ./zed.nix
  ];

  home.packages = [
    pkgs.nautilus
    inputs.zen-browser.packages."${system}".default
  ];

  home.stateVersion = "25.05";
}
