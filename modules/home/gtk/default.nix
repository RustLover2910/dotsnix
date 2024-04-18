{pkgs, ...}: {
  imports = [(import ./catppuccin.nix)];
  home.packages = with pkgs; [
    twemoji-color-font
    noto-fonts-emoji
    gtk-engine-murrine
    gnome-themes-extra
  ];
  qt = {
    enable = true;
    platformTheme = "gtk";
    style.name = "gtk3";
  };
}
