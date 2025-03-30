{ ... }:
{
  imports = [
    ./programs/default.nix
    ./wayland/default.nix
    ./zsh.nix
    ./dev.nix
  ];

  nixpkgs.config.allowUnfree = true;

  home.stateVersion = "24.11";
}
