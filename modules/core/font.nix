{pkgs, ...}: {
  fonts.fontDir.enable = true;
  fonts.packages = with pkgs; [
    noto-fonts
    corefonts
    dosis
    raleway
    comfortaa
    times-newer-roman
    quicksand
    montserrat
    merriweather
    (nerdfonts.override {
      fonts = [
        "JetBrainsMono"
        "Iosevka"
      ];
    })
  ];
}
