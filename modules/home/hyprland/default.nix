{ inputs, ... }:
{
  imports = [ (import ./hyprland.nix) ]
    ++ [ (import ./hypr.nix) ]
    ++ [ (import ./variables.nix) ]
    ++ [ inputs.hyprland.homeManagerModules.default ];
}
