{
  inputs,
  username,
  ...
}: {
  imports =
    [(import ./btop)]
    ++ [(import ./discord)] # discord with catppuccin theme
    ++ [(import ./kitty)]
    ++ [(import ./wofi)]
    ++ [(import ./fish)]
    ++ [(import ./hyprland)]
    ++ [(import ./cava)]
    ++ [(import ./gtk)]
    ++ [(import ./waybar)]
    #++ [(import ./ags)]
    ++ [(import ./gaming)]
    ++ [(import ./starship)]
    ++ [(import ./mako)] # notification deamon
    ++ [(import ./git)]
    ++ [(import ./rust)]
    ++ [(import ./scripts)]
    ++ [(import ./package)];
}
