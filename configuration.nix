{
  system.stateVersion = "26.11";

  networking.hostName = "homelab";

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  services.openssh.enable = true;

  programs = {
    git.enable = true;

    vim = {
      enable = true;
      defaultEditor = true;
    };
  };

  users = {
    mutableUsers = false;

    users.user = {
      isNormalUser = true;
      extraGroups = [ "wheel" ];
    };
  };
}
