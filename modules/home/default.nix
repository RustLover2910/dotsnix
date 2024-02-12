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
    ++ [(import ./gtk)]
    ++ [(import ./qt)]
    ++ [(import ./mako)] # notification deamon
    ++ [(import ./git)]
    ++ [(import ./package)];
}
