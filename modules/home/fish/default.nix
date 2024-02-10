{ pkgs
, username
, ...
}: {
  programs.fish = {
    enable = true;
    shellInit = "scheme set catppuccin";
    shellAliases = {
      nix-sw = "sudo nixos-rebuild switch --flake /home/${username}/dotsnix#nathannix";
      nix-up = "sudo nixos-rebuild switch --upgrade --flake /home/${username}/dotsnix#nathannix";
      nix-fup = "sudo nix flake update /home/${username}/dotsnix#";
      cdnix = "cd ~/dotsnix && codium ~/dotsnix";
    };
  };
  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };
}
