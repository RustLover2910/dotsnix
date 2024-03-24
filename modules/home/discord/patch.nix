with import <nixpkgs> {};
  pkgs.discord.override {
    nss = pkgs.nss-3_90_2;
  }
