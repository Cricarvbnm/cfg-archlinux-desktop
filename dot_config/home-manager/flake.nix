{
  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";

    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    cfg-nixos.url = "git+https://codeberg.org/Alechron/cfg-nixos.git";
  };

  outputs =
    {
      flake-parts,
      home-manager,
      ...
    }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } (
      { withSystem, ... }:
      {
        systems = [ "x86_64-linux" ];

        flake = withSystem "x86_64-linux" (
          { pkgs, inputs', ... }:
          {
            homeConfigurations.alec = home-manager.lib.homeManagerConfiguration {
              inherit pkgs;

              modules = [
                ./home-manager.nix
                ./home.nix
              ];

              extraSpecialArgs = {
                inherit inputs';
              };
            };
          }
        );
      }
    );
}
