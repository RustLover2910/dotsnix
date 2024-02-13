{pkgs, ...}: {
  programs.btop = {
    enable = true;

    settings = {
      color_theme = "catppuccin";
      theme_background = false;
      update_ms = 400;
    };
  };
  home.packages = with pkgs; [nvtop-intel];
}
