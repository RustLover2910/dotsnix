{pkgs, ...}: {
  fonts.fontDir.enable = true;
  fonts.packages = with pkgs; [
    noto-fonts
    corefonts
    dosis
    raleway
    quattrocento
    comfortaa
    quicksand
    montserrat
    merriweather
    (nerdfonts.override {
      fonts = [
        "JetBrainsMono"
        "MartianMono"
        "FiraCode"
        "DroidSansMono"
      ];
    })
  ];
}
