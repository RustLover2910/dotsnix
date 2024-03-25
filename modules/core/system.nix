{
  pkgs,
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
  environment = {
    variables.EDITOR = "nvim";
    systemPackages = with pkgs; [
      wget
      libsForQt5.qt5ct
      qt6Packages.qt6ct
      mypackages.everforest-gtk
      curl
      git
    ];
  };

  time.timeZone = "Asia/Yangon";
  i18n.defaultLocale = "en_US.UTF-8";
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = [
      "openssl-1.1.1w"
    ];
  };
  system.stateVersion = "23.11";
}
