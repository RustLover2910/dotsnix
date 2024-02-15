{ inputs
, username
, ...
}: {
  imports =
    [ (import ./btop) ]
    ++ [ (import ./discord) ] # discord with catppuccin theme
    ++ [ (import ./kitty) ]
    ++ [ (import ./wofi) ]
    ++ [ (import ./fish) ]
    ++ [ (import ./hyprland) ]
    ++ [ (import ./cava) ]
    ++ [ (import ./gtk) ]
    ++ [ (import ./starship) ]
    ++ [ (import ./qt) ]
    ++ [ (import ./mako) ] # notification deamon
    ++ [ (import ./git) ]
    ++ [ (import ./package) ];
}
