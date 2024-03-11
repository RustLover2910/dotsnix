{
  pkgs,
  username,
  ...
}: {
  xdg.configFile."hypr/paper".source = ./paper;
  xdg.configFile."hypr/hyprpaper.conf".text = ''
    preload = ~/.config/hypr/paper/ladyblue.jpg
    wallpaper = ,~/.config/hypr/paper/ladyblue.jpg
    ipc = off
  '';
  xdg.configFile = {
    "hypr/paper/ladyblue.jpg".source = ./paper/ladyblue.jpg;
  };
}
