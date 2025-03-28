{ ... }: {
  imports = [
    ./program/default.nix
    ./wayland/default.nix
    ./theme.nix
    ./zsh.nix
    ./dev.nix
  ];

  home.stateVersion = "24.11";
}
