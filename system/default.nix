{ pkgs, lib, ... }: {
  imports = [
    ./users.nix
    ./locale.nix
    ./fonts.nix
  ];

  # Graphics
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  # Audio
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # Greeter
  services.greetd = {
    enable = true;
    settings = rec {
      initial_session = {
        command = "uwsm start -- hyprland-uwsm.desktop";
        user = "cristhalt";
      };
      default_session = initial_session;
    };
  };

  programs.uwsm = {
    enable = true;
    waylandCompositors.hyprland = {
      prettyName = "Hyprland";
      binPath = lib.getExe pkgs.hyprland;
    };
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "25.05";
}
