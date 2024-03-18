{...}: {
  xdg.configFile."hypr/paper".source = ./wallpaper;
  xdg.configFile."hypr/hyprpaper.conf".text = ''
    preload = ~/.config/hypr/wallpaper/ladyblue.jpg
    wallpaper = ,~/.config/hypr/wallpaper/ladyblue.jpg
    ipc = off
  '';
  xdg.configFile = {
    "hypr/wallpaper/ladyblue.jpg".source = ./wallpaper/ladyblue.jpg;
  };
}
