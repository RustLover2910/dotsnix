{inputs, ...}: {
  programs.bat.enable = true;
  xdg.configFile = {
    "bat/themes/Catppuccin.tmTheme" = {
      source = "${inputs.bat-theme}/themes/Catppuccin%20Frappe.tmTheme";
    };
    "bat/config".text = ''
      --theme="Catppuccin"
    '';
  };
}
