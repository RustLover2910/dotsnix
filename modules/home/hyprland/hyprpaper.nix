{
  xdg = {
    configFile = {
      "hypr/paper".source = ./paper;
      "hypr/hyprpaper.conf".text = ''
        preload = ~/.config/hypr/paper/angelstairway.jpg
        wallpaper = ,~/.config/hypr/paper/angelstairway.jpg
        ipc = off
      '';
      "hypr/paper/ladyblue.jpg".source = ./paper/angelstairway.jpg;
    };
  };
}
