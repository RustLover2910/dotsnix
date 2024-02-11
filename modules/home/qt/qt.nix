{ pkgs, ... }:
{
  home.packages = with pkgs; [
    (catppuccin-kvantum.override
      {
        accent = "blue";
        variant = "Frappe";
      })
  ];
  qt = {
    enable = true;
    platformTheme = "qt5ct";
    style = {
      name = "kvantum";
      package = pkgs.catppuccin-kvantum;
    };
  };

  xdg.configFile = {
    "Kvantum/Catppuccin-Frappe-Blue/Catppuccin-Frappe-Blue/Catppuccin-Frappe-Blue.kvconfig".source = "${pkgs.catppuccin-kvantum}/share/Kvantum/Catppuccin-Frappe-Blue/Catppuccin-Frappe-Blue.kvconfig";
    "Kvantum/Catppuccin-Frappe-Blue/Catppuccin-Frappe-Blue/Catppuccin-Frappe-Blue.svg".source = "${pkgs.catppuccin-kvantum}/share/Kvantum/Catppuccin-Frappe-Blue/Catppuccin-Frappe-Blue.svg";
  };

}
