{inputs, ...}: {
  imports = [inputs.stylix.homeManagerModules.stylix];

  stylix = {
    polarity = "dark";
    image = ./wallpaper/ladyblue.jpg;
    targets = {
      mako.enable = true;
    };
  };
}
