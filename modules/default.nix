{ inputs, system, ... }: {
  imports = [ inputs.home-manager.nixosModules.default ./system/default.nix ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  nixpkgs.config.allowUnfree = true;

  home-manager = {
    extraSpecialArgs = {
      inherit system;
      inherit inputs;
    };
    users = { "cristhalt" = import ./home/default.nix; };
    backupFileExtension = "hmbkp";
  };
}
