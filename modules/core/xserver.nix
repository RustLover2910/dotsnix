{
  pkgs,
  username,
  ...
}: {
  services.xserver = {
    enable = true;
    xkb = {
      layout = "us";
      variant = "";
    };
    displayManager = {
      gdm.enable = true;
    };
    #desktopManager.gnome.enable = true;
    #desktopManager.plasma6.enable = true;
  };
  # To prevent getting stuck at shutdown
  systemd.extraConfig = "DefaultTimeoutStopSec=10s";
}
