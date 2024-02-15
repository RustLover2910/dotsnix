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
    shellInit = " set -U fish_greeting"; #  && scheme set catppuccin ";
    shellAliases = {
      #cd = "z";
      gg = "lazygit";
      cwp = "warp-cli connect";
      dwp = "warp-cli disconnect";
      cl = "clear ";
      re = "fish ";
      l = " eza  --icons -a -T --group-directories-first -1 "; #EZA_ICON_SPACING=2
      ll = " eza --icons -a --group-directories-first -1 --no-user --long ";
      cdnix = "z ~/dotsnix && codium ~/dotsnix ";
      nnix = "z ~/dotsnix && nvim ~/dotsnix ";
    };
    shellAbbrs = {
      e = "z";
      ee = "yazi";
      gitsh = "ssh -T git@github.com";
      npkg = "nvim /home/${username}/dotsnix/modules/home/package/default.nix";
      nhm = "nvim /home/${username}/dotsnix/modules/home/";
      nco = "nvim /home/${username}/dotsnix/modules/core/";
      nix-ts = "sudo nixos-rebuild test --flake /home/${username}/dotsnix#nathannix";
      nix-sw = "sudo nixos-rebuild switch --flake /home/${username}/dotsnix#nathannix";
      nix-up = "sudo nix flake update /home/${username}/dotsnix# && sudo nixos-rebuild switch --upgrade --flake /home/${username}/dotsnix#nathannix";
      # nix-fup = "sudo nix flake update /home/${username}/dotsnix#";
      del = "sudo nix-collect-garbage -d ";
    };
  };
  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };
}
