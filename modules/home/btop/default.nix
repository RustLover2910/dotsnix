{pkgs, ...}: {
  programs.btop = {
    enable = true;

    settings = {
      color_theme = "everforest-dark-soft";
      theme_background = false;
      update_ms = 400;
    };
  };
  home.packages = with pkgs; [
    nvtopPackages.intel
  ];
}
