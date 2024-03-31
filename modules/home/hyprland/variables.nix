{...}: {
  home.sessionVariables = {
    NIXOS_OZONE_WL = "1";
    _JAVA_AWT_WM_NONREPARENTING = "1";
    SSH_AUTH_SOCK = "/run/user/$(id -u)/ssh-agent";
    #  DISABLE_QT5_COMPAT = "0";
    GDK_BACKEND = "wayland,x11";
    TERMINAL = "foot";
    BROWSER = "floorp";
    WLR_DRM_NO_ATOMIC = "1";
    QT_AUTO_SCREEN_SCALE_FACTOR = "1";
    QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
    QT_QPA_PLATFORM = "wayland;xcb";
    MOZ_ENABLE_WAYLAND = "1";
    WLR_BACKEND = "vulkan";
    WLR_RENDERER = "vulkan";
    XDG_CURRENT_DESKTOP = "Hyprland";
    XDG_SESSION_DESKTOP = "Hyprland";
    WLR_NO_HARDWARE_CURSORS = "1";
    XDG_SESSION_TYPE = "wayland";
    GTK_USE_PORTAL = "1";
    NIXOS_XDG_OPEN_USE_PORTAL = "1";
    SDL_VIDEODRIVER = "wayland";
    CLUTTER_BACKEND = "wayland";
    #GTK_THEME = "Catppuccin-Frappe-Standard-Blue-Dark";
    XCURSOR_THEME = "Nordzy-cursors";
    XCURSOR_SIZE = "24";
  };
}
