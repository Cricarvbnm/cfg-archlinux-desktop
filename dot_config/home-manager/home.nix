{ inputs', ... }:
{
  home.packages = [
    inputs'.cfg-nixos.packages.nvim
  ];
}
