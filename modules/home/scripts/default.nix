{pkgs, ...}: let
  polkit-gnome = pkgs.writeShellScriptBin "polkit-gnome" (builtins.readFile ./scripts/polkit.sh);
  portals = pkgs.writeShellScriptBin "portals" (builtins.readFile ./scripts/xdg.sh);
  killwaybar = pkgs.writeShellScriptBin "kwb" (builtins.readFile ./scripts/killwaybar.sh);
in {
  home.packages = with pkgs; [
    polkit-gnome
    killwaybar
    portals
  ];
}
