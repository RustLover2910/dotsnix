{
  pkgs,
  lib,
  ...
}: {
  programs.btop = {
    enable = true;

    settings = {
      color_theme = lib.mkDefault "catppuccin-frappe";
      theme_background = false;
      update_ms = 300;
    };
  };
  home.packages = with pkgs; [
    nvtopPackages.intel
  ];
}
