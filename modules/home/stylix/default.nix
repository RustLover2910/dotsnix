{inputs, ...}: {
  imports = [inputs.stylix.homeManagerModules.stylix];

  stylix = {
    autoEnable = false;
    polarity = "dark";
    image = ./wallpaper/ladyblue.jpg;
    targets = {
      foot.enable = true;
      btop.enable = true;
      mako.enable = true;
      lazygit.enable = true;
    };
  };
}
