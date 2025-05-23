{
  description = "Cristhalt configuration flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }@inputs:
  let
    mkHost = hostname: system: extraModules: nixpkgs.lib.nixosSystem {
      inherit system;
      specialArgs = {
        inherit inputs;
      };

      modules = [
        ./hosts/${hostname}/host.nix
        ./system/default.nix
      ] ++ extraModules;
    };

  in {
    nixosConfigurations = {
      qemu = mkHost "qemu" "x86_64-linux" [];
    };
  };
}
