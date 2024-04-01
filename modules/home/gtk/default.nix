{pkgs, ...}: {
  imports = [(import ./catppuccin.nix)];
  home.packages = [
    pkgs.twemoji-color-font
    pkgs.noto-fonts-emoji
    pkgs.gtk-engine-murrine
    pkgs.gnome-themes-extra
  ];
  qt = {
    enable = true;
    platformTheme = "gtk";
    style.name = "gtk3";
  };
}
