{
  pkgs,
  config,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    gamemode
    gamescope
    winetricks
    mangohud

    #wine-staging
  ];
}
