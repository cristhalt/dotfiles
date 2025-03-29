{ ... }: {
  imports = [ ./kitty.nix ./btop.nix ./yazi.nix ./zen.nix ];

  programs.git = {
    enable = true;
    lfs.enable = true;
    userName = "cristhalt";
    extraConfig = { init.defaultBranch = "main"; };
  };
}
