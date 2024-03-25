{
  config,
  pkgs,
  lib,
  ...
}: {
  nixpkgs.overlays = [
    (final: prev: {
      mypackages = {
        gtk-theme = pkgs.callPackage ../package/customs {};
      };
    })
  ];
}
