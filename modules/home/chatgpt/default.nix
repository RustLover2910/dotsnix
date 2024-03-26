{pkgs, ...}: {
  home.packages = with pkgs; [
    chatgpt-cli
  ];
  xdg.configFile."chatgpt/config.json".source = ./config.json;
}
