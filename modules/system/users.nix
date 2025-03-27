{ pkgs, ... }: {
  users.users.cristhalt = {
    isNormalUser = true;
    description = "Cristhalt";
    extraGroups = [ "networkmanager" "wheel" ];

    shell = pkgs.zsh;
    ignoreShellProgramCheck = true;
  };
}
