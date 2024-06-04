{pkgs, ...}: let
  #polkit-gnome = pkgs.writeShellScriptBin "polkit-gnome" (builtins.readFile ./scripts/polkit.sh);
  portals = pkgs.writeShellScriptBin "portals" (builtins.readFile ./scripts/xdg.sh);
  killwaybar = pkgs.writeShellScriptBin "kwb" (builtins.readFile ./scripts/killwaybar.sh);
  volumectrl = pkgs.writeShellScriptBin "volctrl" (builtins.readFile ./scripts/volume.sh);
  brightctrl = pkgs.writeShellScriptBin "brightctrl" (builtins.readFile ./scripts/brightness.sh);
  gmode = pkgs.writeShellScriptBin "gmode" (builtins.readFile ./scripts/gamemode.sh);
  datime = pkgs.writeShellScriptBin "dt" (builtins.readFile ./scripts/time.sh);
in {
  home.packages = with pkgs; [
    #polkit-gnome
    bc
    killwaybar
    gmode
    volumectrl
    datime
    brightctrl
    portals
  ];
}
