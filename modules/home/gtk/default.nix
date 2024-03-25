{pkgs, ...}: {
  imports = import [../package/customs];
  home.packages = [
    #pkgs.twemoji-color-font
    pkgs.noto-fonts-emoji
    pkgs.gtk-engine-murrine
    pkgs.gnome-themes-extra
    mypackages.everforest-gtk
  ];
  qt = {
    enable = true;
    platformTheme = "gtk";
    style.name = "gtk3";
  };
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
      name = "Catppuccin-Frappe-Standard-Blue-Dark";
      package = pkgs.catppuccin-gtk.override {
        accents = ["blue"];
        size = "standard";
        tweaks = ["rimless"];
        variant = "frappe";
      };
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
