{pkgs, ...}: {
  programs = {
    dconf.enable = true;
    fish.enable = true;
    #neovim = {
   #   enable = true;
    #  defaultEditor = true;
    #  viAlias = true;
    #  vimAlias = true;
   # };
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
      # pinentryFlavor = "";
    };
  };
}
