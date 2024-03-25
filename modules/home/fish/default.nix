{...}: {
  imports =
    [(import ./alias.nix)]
    ++ [(import ./plugin.nix)];
  programs.fish = {
    enable = true;
    shellInit = ''
      set -U fish_greeting
    '';
  };
  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };
}
