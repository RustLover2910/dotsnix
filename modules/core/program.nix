{pkgs, ...}: {
  programs = {
    dconf.enable = true;
    fish.enable = true;
    zoxide = {
      enable = true;
      enableFishIntegration = true;
    };

    #gnupg.agent = {
    #  enable = true;
    #  enableSSHSupport = true;
    #};
  };
}
