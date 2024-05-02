{
  inputs,
  pkgs,
  ...
}: {
  imports = [inputs.stylix.homeManagerModules.stylix];

  #temps
  home.packages = [
    pkgs.foot
  ];

  stylix = {
    autoEnable = false;
    polarity = "dark";
    image = ./wallpaper/ladyblue.jpg;
    targets = {
      btop.enable = true;
      bat.enable = true;
      fzf.enable = true;
      lazygit.enable = true;
    };
  };
}
