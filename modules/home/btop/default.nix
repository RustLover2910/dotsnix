{
  pkgs,
  inputs,
  ...
}: {
  programs.btop = {
    enable = true;

    settings = {
      theme_background = false;
      update_ms = 300;
      color_theme = "catppuccin-frappe";
      truecolor = true;
    };
  };
  home.packages = with pkgs; [
    nvtopPackages.intel
  ];
  xdg.configFile = {
    "btop/themes/catppuccin-frappe.theme".source = "${inputs.btop-theme}/themes/catppuccin_frappe.theme";
  };
}
