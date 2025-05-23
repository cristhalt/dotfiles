{ ... }: {
  users.users.cristhalt = {
    isNormalUser = true;
    description = "Cristhalt";
    extraGroups = [ "networkmanager" "wheel" ];
  };
}
