{
  pkgs,
  config,
  lib,
  ...
}: {
  imports = [(import ./catppuccin.nix)];
  home.packages = with pkgs; [
    twemoji-color-font
    noto-fonts-emoji
    gtk-engine-murrine
    gnome-themes-extra
  ];
  qt = {
    enable = true;
    platformTheme.name = "gtk2";
    style.name = "gtk2";
  };

  # Symlink the `~/.config/gtk-4.0/` folder declaratively to theme GTK-4 apps as well.
  xdg.configFile = {
    "gtk-4.0/assets".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/assets";
    "gtk-4.0/gtk.css".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk.css";
    "gtk-4.0/gtk-dark.css".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk-dark.css";
  };
}
