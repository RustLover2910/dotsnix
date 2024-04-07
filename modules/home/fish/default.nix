{...}: {
  imports =
    [(import ./alias.nix)]
    ++ [(import ./plugin.nix)];
  programs.fish = {
    enable = true;
    shellInit = ''
      set -U fish_greeting
      set -U fish_user_paths ~/.cargo/bin/ $fish_user_paths
    '';
  };
  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };
}
