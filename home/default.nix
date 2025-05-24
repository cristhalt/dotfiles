{ ... }: {
  imports = [
    ./cli/default.nix
    ./wayland/default.nix
    ./zed.nix
  ];

  home.stateVersion = "25.05";
}
