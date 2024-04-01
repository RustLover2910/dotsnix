{pkgs, ...}: let
  everforest-gtk = pkgs.callPackage ./everforest-gtk.nix {};
in {
  home.packages = [
    everforest-gtk
  ];
  gtk = {
    enable = true;
    font = {
      name = "Montserrat";
      size = 13;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.catppuccin-papirus-folders.override {
        flavor = "frappe";
        accent = "blue";
      };
    };
    theme = {
      name = "Everforest-Dark-Medium-BL";
      package = everforest-gtk;
    };
    cursorTheme = {
      name = "Nordzy-cursors";
      package = pkgs.nordzy-cursor-theme;
      size = 24;
    };
  };

  home = {
    sessionVariables.GTK_THEME = "Everforest-Dark-Medium-BL";
    pointerCursor = {
      name = "Nordzy-cursors";
      package = pkgs.nordzy-cursor-theme;
      size = 24;
    };
  };
}
