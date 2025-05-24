{ ... }: {
  imports = [ ./zed.nix ];

  programs.git = {
      enable = true;
      userName  = "cristhalt";
      userEmail = "203342643+cristhalt@users.noreply.github.com";
    };
}
