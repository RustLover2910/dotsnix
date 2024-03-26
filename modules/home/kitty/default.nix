{pkgs, ...}: {
  programs.kitty = {
    enable = true;

    theme = "Catppuccin-Frappe";

    font = {
      name = "JetBrainsMono Nerd Font";
      size = 14;
    };

    settings = {
      confirm_os_window_close = 0;
      background_opacity = "0.8";
      window_padding_width = 5;
      scrollback_lines = 10000;
      enable_audio_bell = true;
    };
  };

  #xdg.configFile."kitty/kitty.conf".text = ''
  #  include everforest.conf
  #'';
  #xdg.configFile."kitty/everforest.conf".source = ./everforest.conf;
}
