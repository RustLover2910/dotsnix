{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    inputs.swww.packages.${pkgs.system}.swww
    inputs.hyprland-contrib.packages.${pkgs.system}.grimblast
    inputs.hyprpicker.packages.${pkgs.system}.default
    inputs.hyprlock.packages.${pkgs.system}.default
    inputs.hypridle.packages.${pkgs.system}.default
    wlogout
    hyprpaper
    wl-gammarelay-rs
    brightnessctl
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
      # hidpi = true;
    };
    ## plugins = [
    #   inputs.hyprland-plugins.packages.${pkgs.system}.hyprexpo
    # ];
    systemd.enable = true;
    systemd.variables = ["--all"];
  };
}
