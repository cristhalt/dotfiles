{
  description = "Cristhalt configuration flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
  let
    mkHost = hostname: system: extraModules: nixpkgs.lib.nixosSystem {
      inherit system;
      specialArgs = {
        inherit inputs;
      };

      modules = [
        ./hosts/${hostname}/host.nix
        ./system/default.nix
        home-manager.nixosModules.home-manager {
          home-manager = {
            useUserPackages = true;
            useGlobalPkgs = true;
            extraSpecialArgs = {
              inherit system;
              inherit inputs;
            };
          };
        }
      ] ++ extraModules;
    };

  in {
    nixosConfigurations = {
      qemu = mkHost "qemu" "x86_64-linux" [];
      laptop-victus = mkHost "laptop-victus" "x86_64-linux" [];
    };
  };
}
