{
  system.stateVersion = "26.11";

  networking.hostName = "homelab";

  services.openssh.enable = true;

  programs.vim.enable = true;

  users = {
    mutableUsers = false;

    users.user = {
      isNormalUser = true;
      extraGroups = [ "wheel" ];
    };
  };
}
