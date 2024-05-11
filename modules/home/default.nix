{
  username,
  inputs,
  pkgs,
  ...
}: {
  imports = [
    ./btop
    ./discord # discord with catppuccin theme
    ./foot
    ./fish
    ./hyprland
    ./cava
    ./gtk
    ./waybar
    ./themes
    ./lazygit
    ./cat
    ./gaming
    ./spotify
    ./wlogout
    ./starship
    ./anyrun
    ./mako # notification deamon
    ./git
    ./yazi
    ./yt-dlp
    ./scripts
    ./package
  ];

  home = {
    username = "${username}";
    homeDirectory = "/home/${username}";
    stateVersion = "23.11";
  };

  programs.home-manager.enable = true; #let home-manager manage itself
}
