{pkgs, ...}: {
  everforest = rec {
    name = "everforest";

    base00 = "#272e33";
    # original base00 = "#2f383e";
    base01 = "#2e383c";
    # original base01 = "#374247";
    base02 = "#414b50";
    # original base02 = "#4a555b";
    base03 = "#859289";
    base04 = "#9da9a0";
    base05 = "#d3c6aa";
    base06 = "#e4e1cd";
    base07 = "#fdf6e3";
    base08 = "#7fbbb3";
    base09 = "#d699b6";
    base0A = "#dbbc7f";
    base0B = "#83c092";
    base0C = "#e69875";
    base0D = "#a7c080";
    base0E = "#e67e80";
    base0F = "#eaedc8";

    bg = base00;
    bg1 = base01;
    bg2 = base02;
    bg3 = base03;
    bg4 = base04;
    fg = base05;
    fg1 = base06;
    alt1 = base07;
    red = base0E;
    orange = base0C;
    yellow = base0A;
    green = base0D;
    cyan = base0B;
    blue = base08;
    magenta = base09;
    alt2 = base0F;

    bgx = builtins.substring 1 6 bg;
    bg1x = builtins.substring 1 6 bg1;
    bg2x = builtins.substring 1 6 bg2;
    bg3x = builtins.substring 1 6 bg3;
    bg4x = builtins.substring 1 6 bg4;
    fgx = builtins.substring 1 6 fg;
    fg1x = builtins.substring 1 6 fg1;
    alt1x = builtins.substring 1 6 alt1;
    redx = builtins.substring 1 6 red;
    orangex = builtins.substring 1 6 orange;
    yellowx = builtins.substring 1 6 yellow;
    greenx = builtins.substring 1 6 green;
    cyanx = builtins.substring 1 6 cyan;
    bluex = builtins.substring 1 6 blue;
    magentax = builtins.substring 1 6 magenta;
    alt2x = builtins.substring 1 6 alt2;

    black = "#15191c";

    gtkThemeName = "Everforest-Dark-BL";
    gtkThemePackage = pkgs.callPackage ./customs/everforest.nix {};
    iconThemeName = "Everforest-Dark";
    iconThemePackage = gtkThemePackage;
    cursorThemeName = "Nordzy-cursors";
    cursorThemePackage = pkgs.nordzy-cursor-theme;

    configFile = {
      "gtk-4.0/assets".source = "${gtkThemePackage}/share/themes/${gtkThemeName}/gtk-4.0/assets";
      "gtk-4.0/gtk.css".source = "${gtkThemePackage}/share/themes/${gtkThemeName}/gtk-4.0/gtk.css";
      "gtk-4.0/gtk-dark.css".source = "${gtkThemePackage}/share/themes/${gtkThemeName}/gtk-4.0/gtk-dark.css";
    };
  };
}
