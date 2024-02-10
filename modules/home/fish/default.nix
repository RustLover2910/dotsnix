{ pkgs
, username
, flake_path
, ...
}: {
  programs.fish = {
    enable = true;
    shellInit = "scheme set catppuccin";
    shellAliases = {
      nix-sw = "sudo nixos-rebuild switch --flake ${flake_path}#${username}";
      nix-up = "sudo nixos-rebuild switch --upgrade --flake ${flake_path}#${username}";
      nix-fup = "sudo nix flake update ${flake_path}#";
    };
  };
  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };
}
