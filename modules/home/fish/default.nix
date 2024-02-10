{ pkgs, ... }:
{
  programs.fish = {
    enable = true;
    shellInit = "scheme set catppuccin";
  };
}
