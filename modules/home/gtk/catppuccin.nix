{
  pkgs,
  lib,
  ...
}: {
  gtk = {
    enable = true;
    font = lib.mkDefault {
      name = "Montserrat";
      size = 13;
    };
    iconTheme = lib.mkDefault {
      name = "Papirus-Dark";
      package = pkgs.catppuccin-papirus-folders.override {
        flavor = "frappe";
        accent = "blue";
      };
    };
    # theme = lib.mkDefault {
    #  name = "Catppuccin-Frappe-Standard-Blue-Dark";
    #  package = pkgs.catppuccin-gtk.override {
    #    accents = ["blue"];
    ###    size = "standard";
    #   tweaks = ["rimless"];
    #   variant = "frappe";
    #  };
    # };
    cursorTheme = {
      name = "Nordzy-cursors";
      package = pkgs.nordzy-cursor-theme;
      size = 24;
    };
  };
  home = {
    #sessionVariables.GTK_THEME = "Catppuccin-Frappe-Standard-Blue-Dark";
    pointerCursor = lib.mkDefault {
      name = "Nordzy-cursors";
      package = pkgs.nordzy-cursor-theme;
      size = 24;
    };
  };
}
