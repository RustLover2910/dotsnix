{username, ...}: {
  imports =
    [(import ./btop)]
    ++ [(import ./discord)] # discord with catppuccin theme
    ++ [(import ./foot)]
    ++ [(import ./wofi)]
    ++ [(import ./fish)]
    ++ [(import ./hyprland)]
    ++ [(import ./cava)]
    ++ [(import ./gtk)]
    ++ [(import ./waybar)]
    ++ [(import ./stylix)]
    ++ [(import ./lazygit)]
    ++ [(import ./cat)]
    ++ [(import ./gaming)]
    ++ [(import ./spotify)]
    ++ [(import ./starship)]
    ++ [(import ./mako)] # notification deamon
    ++ [(import ./git)]
    ++ [(import ./yazi)]
    ++ [(import ./yt-dlp)]
    ++ [(import ./rust)]
    ++ [(import ./scripts)]
    ++ [(import ./package)];

  home = {
    username = "${username}";
    homeDirectory = "/home/${username}";
    stateVersion = "23.11";
  };
  programs.home-manager.enable = true;
}
