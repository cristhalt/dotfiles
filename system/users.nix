{ ... }: {
  users.users.cristhalt = {
    isNormalUser = true;
    description = "Cristhalt";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  home-manager.users.cristhalt = import ../home/default.nix;
}
