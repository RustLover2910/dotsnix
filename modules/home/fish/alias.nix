{
  pkgs,
  username,
  ...
}: {
  programs.fish = {
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
      part = "sudo -E gparted";
    };
    shellAbbrs = {
      sshgit = "ssh-add /home/${username}/.ssh/id_ed25519 && ssh -T git@github.com";
      e = "z";
      ee = "yazi";
      #gitsh = "ssh -T git@github.com";
      npkg = "nvim /home/${username}/dotsnix/modules/home/package/default.nix";
      nhm = "yazi /home/${username}/dotsnix/modules/home/";
      nco = "yazi /home/${username}/dotsnix/modules/core/";
      nix-ts = "sudo nixos-rebuild test --flake /home/${username}/dotsnix#${username}";
      nix-sw = "sudo nixos-rebuild switch --flake /home/${username}/dotsnix#${username}";
      nix-up = "sudo nix flake update /home/${username}/dotsnix# && sudo nixos-rebuild switch --upgrade --flake /home/${username}/dotsnix#nathannix";
      # nix-fup = "sudo nix flake update /home/${username}/dotsnix#";
      del = "sudo nix-collect-garbage -d ";
    };
  };
}
