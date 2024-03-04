{pkgs, ...}: {
  home.packages = with pkgs; [
    #catppuccin-qt5ct
    (catppuccin-kvantum.override
      {
        accent = "Blue";
        variant = "Frappe";
      })
  ];

  qt = {
    enable = true;
    platformTheme = "qtct";
  };

  xdg.configFile."qt5ct/colors".source = ./share/qt5ct/colors;
  xdg.configFile."qt5ct/qt5ct.conf".text = ''
    [Appearance]
    custom_palette=false
    icon_theme=Papirus-Dark
    standard_dialogs=default

    [Fonts]
    fixed="JetBrainsMono Nerd Font,13,-1,5,50,0,0,0,0,0,Regular"
    general="JetBrainsMono Nerd Font,13,-1,5,50,0,0,0,0,0,Regular"

    [Interface]
    activate_item_on_single_click=1
    buttonbox_layout=0
    cursor_flash_time=1000
    dialog_buttons_have_icons=1
    double_click_interval=400
    gui_effects=@Invalid()
    keyboard_scheme=2
    menus_have_icons=true
    show_shortcuts_in_context_menus=true
    stylesheets=@Invalid()
    toolbutton_style=4
    underline_shortcut=1
    wheel_scroll_lines=3

    [SettingsWindow]
    geometry=@ByteArray(\x1\xd9\xd0\xcb\0\x3\0\0\0\0\x1\x8e\0\0\0\xa8\0\0\x5\a\0\0\x3l\0\0\x1\x8e\0\0\0\xcc\0\0\x5\a\0\0\x3l\0\0\0\0\0\0\0\0\a\x80\0\0\x1\x8e\0\0\0\xcc\0\0\x5\a\0\0\x3l)

    [Troubleshooting]
    force_raster_widgets=1
    ignored_applications=@Invalid()
  '';
}
