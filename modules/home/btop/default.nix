{pkgs, ...}: {
  programs.btop = {
    enable = true;

    settings = {
      color_theme = "everforest-dark-medium";
      theme_background = false;
      update_ms = 300;
    };
  };
  home.packages = with pkgs; [
    nvtopPackages.intel
  ];
}
