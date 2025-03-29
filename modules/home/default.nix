{ ... }:
{
  imports = [
    ./programs/default.nix
    ./wayland/default.nix
    ./zsh.nix
    ./dev.nix
  ];

  home.stateVersion = "24.11";
}
