{pkgs, ...}: {
  programs.git = {
    enable = true;

    userName = "RustLover2910";
    userEmail = "abyssalyrics2910@gmail.com";

    extraConfig = {
      init.defaultBranch = "main";
      #credential.helper = "store";
    };
  };

  home.packages = [pkgs.gh];
}
