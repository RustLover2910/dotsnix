{
  pkgs,
  username,
  ...
}: {
  programs.fish = {
    shellAliases = {
      ia = "ip address";
      gg = "lazygit";
      cwp = "warp-cli connect";
      dwp = "warp-cli disconnect";
      cl = "clear";
      re = "fish";
      l = " eza  --icons -a -T --group-directories-first -1 "; #EZA_ICON_SPACING=2
      ll = " eza --icons -a --group-directories-first -1 --no-user --long ";
      cdnix = "z ~/dotsnix && codium ~/dotsnix ";
      nnix = "yazi /home/${username}/dotsnix";
      part = "sudo -E gparted";
      yy = "yazi";
    };
    shellAbbrs = {
      sshgit = "ssh-add /home/${username}/.ssh/id_ed25519 && ssh -T git@github.com";
      b = "btop";
      e = "z";
      ee = "yazi";
      #gitsh = "ssh -T git@github.com";
      npkg = "nvim /home/${username}/dotsnix/modules/home/package/default.nix";
      hm = "yazi /home/${username}/dotsnix/modules/home/";
      co = "yazi /home/${username}/dotsnix/modules/core/";
      nts = "sudo nixos-rebuild test --flake /home/${username}/dotsnix#${username}";
      nsw = "sudo nixos-rebuild switch --flake /home/${username}/dotsnix#${username}";
      nup = "sudo nix flake update /home/${username}/dotsnix# && sudo nixos-rebuild switch --upgrade --flake /home/${username}/dotsnix#nathannix";
      del = "sudo nix-collect-garbage -d ";
    };
  };
}
