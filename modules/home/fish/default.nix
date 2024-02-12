{ pkgs
, username
, ...
}: {

  home.packages = with pkgs; [
    fishPlugins.fzf-fish
    fishPlugins.autopair
    fishPlugins.colored-man-pages
    fishPlugins.grc
  ];

  programs.fish = {
    enable = true;
    shellInit = " set -U fish_greeting && scheme set catppuccin";
    shellAbbrs = {
      nix-sw = "sudo nixos-rebuild switch --flake /home/${username}/dotsnix#nathannix";
      nix-up = "sudo nix flake update /home/${username}/dotsnix# && sudo nixos-rebuild switch --upgrade --flake /home/${username}/dotsnix#nathannix";
      # nix-fup = "sudo nix flake update /home/${username}/dotsnix#";
      cl = "clear";
      re = "fish";
      del = "sudo nix-collect-garbage -d ";
      l = "eza --icons  -a -T --group-directories-first -1"; #EZA_ICON_SPACING=2
      ll = "eza --icons  -a --group-directories-first -1 --no-user --long";
      cdnix = "z ~/dotsnix && codium ~/dotsnix";
      nvnix = "z ~/dotsnix && nvim ~/dotsnix";
    };
  };
  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };
}
