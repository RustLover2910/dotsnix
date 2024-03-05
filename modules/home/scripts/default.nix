{pkgs, ...}: let
  polkit-gnome = pkgs.writeShellScriptBin "polkit-gnome" (builtins.readFile ./scripts/polkit.sh);
in {
  home.packages = with pkgs; [
    polkit-gnome
  ];
}
