{inputs, ...}: {
  programs.lazygit = {
    enable = true;
  };
  xdg.configFile = {
    "lazygit/config.yml".source = "${inputs.lazygit-theme}/themes/frappe/pink.yml";
  };
}
