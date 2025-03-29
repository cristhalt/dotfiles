{
  description = "My personal nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser.url = "github:0xc000022070/zen-browser-flake";
  };

  outputs =
    { nixpkgs, ... }@inputs:
    let
      mkSystem =
        {
          hostname,
          system ? "x86_64-linux",
        }:
        nixpkgs.lib.nixosSystem {
          specialArgs = {
            inherit inputs;
            inherit system;
          };
          modules = [
            (./hosts + "/${hostname}/configuration.nix")
            ./modules/default.nix
          ];
        };
    in
    {
      nixosConfigurations = {
        hp-victus = mkSystem { hostname = "hp-victus"; };
        kvm-guest = mkSystem { hostname = "kvm-guest"; };
      };
    };
}
