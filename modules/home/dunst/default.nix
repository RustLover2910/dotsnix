{pkgs, ...}: {
  services.dunst = {
    enable = true;
    iconTheme = {
      name = "Adwaita";
      package = pkgs.gnome.adwaita-icon-theme;
      size = "16x16";
    };
    settings = {
      global = {
        width = "(200,500)";
        height = 400;
        origin = "top-right";
        offset = "15x15";
        notification_limit = 10;
        progress_bar = true;
        font = "Iosevka Nerd Font 14";
        padding = 5;
        horizontal_padding = 8;
        progress_bar_height = 10;
        frame_width = 3;
        frame_color = "#EAC1D8";
        separator_color = "frame";
        title = "Dunst";
        class = "Dunst";
        browser = "/usr/bin/xdg-open";
        gap_size = 2;
        format = "<b>%s</b>\n%b";
        alignment = "left";
        vertical_alignment = "center";
        show_age_threshold = 15;
        ellipsize = "middle";
        stack_duplicates = true;
        show_indicators = "yes";
        corner_radius = 8;
        mouse_left_click = "open_url";
        mouse_middle_click = "close_all";
        mouse_right_click = "close_current";
      };
      urgency_normal = {
        background = "#37474f";
        foreground = "#c6d0f5";
        timeout = 10;
      };
      urgency_low = {
        background = "#303446";
        foreground = "#c6d0f5";
      };
      urgency_critical = {
        background = "#303446";
        foreground = "#c6d0f5";
        frame_color = "#FAB387";
      };
    };
  };
}
