{ pkgs, ... }:
{
  home.packages = with pkgs; [
    (catppuccin-kvantum.override
      {
        accent = "Blue";
        variant = "Frappe";
      })
  ];
  qt = {
    enable = true;
    platformTheme = "qtct";
    style = {
      name = "kvantum";
      #package = pkgs.catppuccin-kvantum;
    };
  };

  #xdg.configFile = {
  # "Kvantum/Catppuccin-Frappe-Blue/Catppuccin-Frappe-Blue/Catppuccin-Frappe-Blue.kvconfig".source = "${pkgs.catppuccin-kvantum}/share/Kvantum/Catppuccin-Frappe-Blue/Cattpuccin-Frappe-Blue.kvconfig";
  #"Kvantum/Catppuccin-Frappe-Blue/Catppuccin-Frappe-Blue/Catppuccin-Frappe-Blue.svg".source = "${pkgs.catppuccin-kvantum}/share/Kvantum/Catppuccin-Frappe-Blue/Cattpuccin-Frappe-Blue.svg";
  #};
  xdg.configFile."Kvantum/kvantum.kvconfig".source = (pkgs.formats.ini { }).generate "kvantum.kvconfig" {
    General.theme = "Catppuccin-Frappe-Blue";
  };
}
