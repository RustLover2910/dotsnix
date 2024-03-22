{pkgs, ...}: let
  polkit-gnome = pkgs.writeShellScriptBin "polkit-gnome" (builtins.readFile ./scripts/polkit.sh);
  portals = pkgs.writeShellScriptBin "portals" (builtins.readFile ./scripts/xdg.sh);
in {
  home.packages = with pkgs; [
    polkit-gnome
    portals
  ];
}
