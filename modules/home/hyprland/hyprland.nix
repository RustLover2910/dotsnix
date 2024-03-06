{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    swww
    inputs.hyprland-contrib.packages.${pkgs.system}.grimblast
    hyprpicker
    hypridle
    hyprlock
    hyprpaper
    wl-gammarelay-rs
    wofi
    rofi-wayland
    brightnessctl
    grim
    slurp
    glib
    wayland
    direnv
  ];
  systemd = {
    user = {
      targets.hyprland-session.Unit.Wants = ["xdg-desktop-autostart.target"];
    };
  };
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland = {
      enable = true;
      # hidpi = true;
    };
    # enableNvidiaPatches = false;
    systemd.enable = true;
  };
}
