{pkgs, ...}: let
  everforest-gtk = pkgs.callPackage ./everforest-gtk.nix {};
in {
  home.packages = [
    everforest-gtk
  ];
  gtk = {
    enable = true;
    font = {
      name = "JetBrainsMono Nerd Font";
      size = 12;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.catppuccin-papirus-folders.override {
        flavor = "frappe";
        accent = "blue";
      };
    };
    theme = {
      name = "Everforest-Dark-BL";
      package = everforest-gtk;
    };
    cursorTheme = {
      name = "Nordzy-cursors";
      package = pkgs.nordzy-cursor-theme;
      size = 24;
    };
  };
  home = {
    #sessionVariables.GTK_THEME = "Catppuccin-Frappe-Standard-Blue-Dark";
    pointerCursor = {
      name = "Nordzy-cursors";
      package = pkgs.nordzy-cursor-theme;
      size = 24;
    };
  };
}
