{ pkgs, ... }: {
  imports = [ ./users.nix ./locale.nix ./hyprland.nix ./dm.nix ];

  networking.networkmanager.enable = true;

  fonts.packages = with pkgs; [ nerd-fonts.jetbrains-mono ];

  console.keyMap = "fr";

  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  documentation.nixos.enable = false;
  system.stateVersion = "24.11";
}
