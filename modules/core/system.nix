{
  pkgs,
  inputs,
  ...
}: {
  environment = {
    variables.EDITOR = "nvim";
    systemPackages = with pkgs; [
      wget
      ntfs3g
      wl-clipboard
      unzip
      curl
      git
    ];
  };

  time.timeZone = "Asia/Yangon";
  i18n.defaultLocale = "en_US.UTF-8";
  system.stateVersion = "23.11";
}
