{...}: {
  services = {
    gvfs.enable = true;
    gnome.gnome-keyring.enable = true;
    dbus.enable = true;
    openssh.enable = true;
    flatpak.enable = true;
    fwupd.enable = true;
    printing.enable = true;
    blueman.enable = true;
    devmon.enable = true;
    udisks2.enable = true;

    # logind = {
    #   powerKey = "suspend";
    #   powerKeyLongPress = "reboot";
    # };
  };
  programs.ssh.startAgent = true; #
}
