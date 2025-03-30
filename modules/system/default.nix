{ pkgs, ... }:
{
  imports = [
    ./users.nix
    ./locale.nix
    ./hyprland.nix
    ./greeter.nix
  ];

  networking.networkmanager.enable = true;

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
  ];

  console.keyMap = "fr";
  services.xserver.xkb.layout = "fr";

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };
  environment.systemPackages = with pkgs; [ pw-volume ];

  documentation.nixos.enable = false;

  system.stateVersion = "24.11";
}
