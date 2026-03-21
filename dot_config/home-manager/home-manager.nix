{
  home = rec {
    username = "alec";
    homeDirectory = "/home/${username}";

    stateVersion = "25.11";
  };

  programs = {
    home-manager.enable = true;

    nh = {
      enable = true;
    };
  };
}
