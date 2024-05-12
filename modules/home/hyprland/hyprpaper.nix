{
  xdg = {
    configFile = {
      "hypr/paper".source = ./paper;
      "hypr/hyprpaper.conf".text = ''
        preload = ~/.config/hypr/paper/angelstairway.png
        preload = ~/.config/hypr/paper/nanomortisclock.png
        wallpaper = ,~/.config/hypr/paper/nanomortisclock.png
        ipc = off
      '';
      "hypr/paper/angelstairway.png".source = ./paper/angelstairway.png;
      "hypr/paper/nanomortisclock.png".source = ./paper/nanomortisclock.png;
    };
  };
}
