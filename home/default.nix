{ ... }: {
  imports = [
    ./cli/default.nix
    ./wayland/default.nix
  ];

  home.stateVersion = "25.05";
}
