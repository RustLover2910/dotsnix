{
  inputs,
  username,
  ...
}: {
  imports =
    [(import ./btop)]
    ++ [(import ./discord)] # discord with catppuccin theme
    ++ [(import ./kitty)]
    ++ [(import ./foot)]
    ++ [(import ./wofi)]
    ++ [(import ./fish)]
    ++ [(import ./hyprland)]
    ++ [(import ./cava)]
    ++ [(import ./gtk)]
    ++ [(import ./waybar)]
    ++ [(import ./ags)]
    ++ [(import ./direnv)]
    ++ [(import ./gaming)]
    ++ [(import ./starship)]
    ++ [(import ./mako)] # notification deamon
    ++ [(import ./git)]
    ++ [(import ./yazi)]
    ++ [(import ./yt-dlp)]
    ++ [(import ./rust)]
    ++ [(import ./scripts)]
    ++ [(import ./package)];
}
