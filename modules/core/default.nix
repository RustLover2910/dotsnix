{ inputs, nixpkgs, self, username, ... }:
let
  system = "x86_64-linux";
  flake_path = "/home/${username}/Document/nixdots/";
  pkgs = nixpkgs.legacyPackages.${system};
  lib = nixpkgs.lib;
in
{
  nathannix = lib.nixosSystem {
    specialArgs = { inherit self inputs username flake_path; };
    modules =
      [ (import ./bootloader.nix) ]
      ++ [ (import ./hardware.nix) ]
      ++ [ (import ./xserver.nix) ]
      #++ [ (import ./steam.nix) ]
      ++ [ (import ./network.nix) ]
      ++ [ (import ./pipewire.nix) ]
      ++ [ (import ./program.nix) ]
      #++ [ (import ./../home/package/python.nix) ]
      ++ [ (import ./security.nix) ]
      ++ [ (import ./services.nix) ]
      ++ [ (import ./system.nix) ]
      ++ [ (import ./user.nix) ]
      ++ [ (import ./wayland.nix) ]
      #++ [ (import ./cloudflare-warp.nix) ]
      # ++ [ (import ./virtualization.nix) ]
      ++ [ (import ./../../hosts/nixos/hardware-configuration.nix) ]
    ;
  };
}
