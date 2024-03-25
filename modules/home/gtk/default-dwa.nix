{
  config,
  systemConfig,
  inputs,
  lib,
  ...
}: let
  theme = systemConfig.theme.set;
in {
  config = lib.mkIf systemConfig.profile.graphical {
    gtk = {
      enable = true;
      font = {
        name = "JetBrainsMono Nerd Font";
        size = 10;
      };
      theme = {
        name = theme.gtkThemeName;
        package = theme.gtkThemePackage;
      };
      iconTheme = {
        name = theme.iconThemeName;
        package = theme.iconThemePackage;
      };
      gtk4.extraConfig.gtk-application-prefer-dark-theme = 1;
    };

    home = {
      sessionVariables = {
        GTK_THEME = theme.gtkThemeName;
      };
      pointerCursor = {
        package = theme.cursorThemePackage;
        name = theme.cursorThemeName;
        size = 32;
        gtk.enable = true;
      };
    };
  };
}
