{pkgs, ...}: let
  callPackage = pkgs.callPackage;
in {
  nixpkgs.overlays = [
    (final: prev: {
      mypackages = {
        everforest-gtk = callPackage ./everforest.nix {};
      };
    })
  ];
}
