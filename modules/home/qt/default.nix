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

  xdg.configFile."Kvantum/kvantum.kvconfig".source = (pkgs.formats.ini { }).generate "kvantum.kvconfig" {
    General.theme = "Catppuccin-Frappe-Blue";
  };
}
