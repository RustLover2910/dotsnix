{...}: {
  security = {
    rtkit.enable = true;
    sudo.enable = true;
    polkit.enable = true;
    pam.services.hyprlock = {};
    pam.services.gdm.enableGnomeKeyring = true;
  };
}
