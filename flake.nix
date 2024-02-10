{
  description = "FrostPhoenix's nixos configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nur.url = "github:nix-community/NUR";

    hypr-contrib.url = "github:hyprwm/contrib";
    hyprpicker.url = "github:hyprwm/hyprpicker";

    alejandra.url = "github:kamadorueda/alejandra/3.0.0";

    nix-gaming.url = "github:fufexan/nix-gaming";

    hyprland = {
      url = "github:hyprwm/Hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    catppuccin-bat = {
      url = "github:catppuccin/bat";
      flake = false;
    };
    catppuccin-cava = {
      url = "github:catppuccin/cava";
      flake = false;
    };
    catppuccin-starship = {
      url = "github:catppuccin/starship";
      flake = false;
    };
    RustLover = {
      url = "github:RustLover2910/Nixvim-neve";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, self, ... } @ inputs:
    let
      username = "nathannix";
      flake_path = "/home/${username}/dotsnix";
    in
    {
      #overlays.default = selfPkgs.overlay;
      nixosConfigurations = import ./modules/core/default.nix {
        inherit self nixpkgs inputs username flake_path;
      };
    };
}
