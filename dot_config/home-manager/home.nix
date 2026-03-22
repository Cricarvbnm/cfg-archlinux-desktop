{ inputs', ... }:
{
  home.packages = [
    (inputs'.cfg-nixos.packages.nvim.extend (import ./nixvim.nix))
  ];
}
