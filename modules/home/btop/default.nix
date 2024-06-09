{
  pkgs,
  inputs,
  ...
}: {
  programs.btop = {
    enable = true;

    settings = {
      theme_background = false;
      update_ms = 150;
    };
  };
  home.packages = with pkgs; [
    nvtopPackages.intel
  ];
  xdg.configFile = {
    "btop/config.yml".text =
      builtins.readFile
      "${inputs.lazygit-theme}/themes/frappe/pink.yml";
  };
}
