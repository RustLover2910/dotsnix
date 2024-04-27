{
  pkgs,
  inputs,
  ...
}: {
  programs.yazi = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      manager = {
        show_hidden = false;
        sort_by = "alphabetical";
        sort_dir_first = true;
      };
    };
  };

  home.packages = with pkgs; [
    exiftool
    fd
    ffmpegthumbnailer
    ripgrep
    unar
  ];
  #xdg.configFile = {
  #  "yazi/theme.toml".text =
  #    builtins.readFile
  ##   "${inputs.yazi-theme}/catppuccin-frappe.yazi/flavor.toml";
  # };
}
