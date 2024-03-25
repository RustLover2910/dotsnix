{pkgs, ...}: {
  home.packages = with pkgs; [
    fishPlugins.fzf-fish
    fishPlugins.autopair
    fishPlugins.colored-man-pages
    fishPlugins.grc
  ];
}
