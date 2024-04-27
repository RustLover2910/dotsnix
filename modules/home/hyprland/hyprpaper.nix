{
  xdg = {
    configFile = {
      "hypr/paper".source = ./paper;
      "hypr/hyprpaper.conf".text = ''
        preload = ~/.config/hypr/paper/angelstairway.png
        wallpaper = ,~/.config/hypr/paper/angelstairway.png
        ipc = off
      '';
      "hypr/paper/ladyblue.jpg".source = ./paper/angelstairway.png;
    };
  };
}
