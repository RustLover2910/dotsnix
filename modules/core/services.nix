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
  };
  programs.ssh.startAgent = true; #
}
