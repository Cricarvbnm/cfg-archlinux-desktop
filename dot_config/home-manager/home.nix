{ pkgs, ... }:
{
  imports = [
    ./hosts/generic-linux/nvidia.nix # Do something for generic linux
  ];

  home = {
    username = "alec";
    homeDirectory = "/home/alec";

    packages = with pkgs; [
    ];

    stateVersion = "25.05";
  };

  nix = {
    package = pkgs.nix;
    settings = {
      experimental-features = [
        "flakes"
        "nix-command"
      ];
    };
    gc = {
      automatic = true;
      dates = "monthly";
    };
  };

  nixpkgs.config.allowUnfree = true;
  targets.genericLinux.enable = true;

  programs.home-manager.enable = true;
}
