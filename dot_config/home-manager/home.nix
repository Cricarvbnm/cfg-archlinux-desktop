{ pkgs, ... }:
{
  imports = [
    ./hosts/generic-linux/nvidia.nix # Do something for generic linux

    ./modules/tieba-sign.nix
  ];

  home = {
    username = "alec";
    homeDirectory = "/home/alec";
    file.".icon".source = ./icon.png;

    packages = with pkgs; [
      xeyes
      save-music
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
