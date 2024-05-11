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
    wlogout
    hyprlock
    hyprpaper
    wl-gammarelay-rs
    brightnessctl
    grim
    slurp
    glib
    wayland
  ];
  systemd = {
    user = {
      targets.hyprland-session.Unit.Wants = ["xdg-desktop-autostart.target"];
    };
  };
  wayland.windowManager.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.system}.default;
    xwayland = {
      enable = true;
      hidpi = true;
    };
    ## plugins = [
    #   inputs.hyprland-plugins.packages.${pkgs.system}.hyprexpo
    # ];
    systemd.enable = true;
    systemd.variables = ["--all"];
  };
}
