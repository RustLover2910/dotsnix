{
  self,
  pkgs,
  lib,
  inputs,
  ...
}: {
  # imports = [ inputs.nix-gaming.nixosModules.default ];
  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = ["nix-command" "flakes"];
    };
  };
  nixpkgs = {
    overlays = [
      inputs.nur.overlay
    ];
  };

  environment = {
    variables.EDITOR = "nvim";
    systemPackages = with pkgs; [
      wget
      libsForQt5.qtstyleplugin-kvantum
      libsForQt5.qt5ct
      qt6Packages.qt6ct
      curl
      git
    ];
  };

  fonts.fontDir.enable = true;
  fonts.packages = with pkgs; [
    noto-fonts
    dosis
    raleway
    comfortaa
    quicksand
    montserrat
    (nerdfonts.override {
      fonts = [
        "JetBrainsMono"
        "MartianMono"
        "FiraCode"
        "DroidSansMono"
      ];
    })
  ];

  time.timeZone = "Asia/Yangon";
  i18n.defaultLocale = "en_US.UTF-8";
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "23.11";
}
