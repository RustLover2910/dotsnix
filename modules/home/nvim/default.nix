{pkgs, ...}: {
  programs.neovim = {
    enable = true;
    vimAlias = true;
    viAlias = true;
  };

  xdg.configFile."nvim/".source = ./nvim;
}
