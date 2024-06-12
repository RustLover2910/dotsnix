{
  description = "ultimatumnix's nixos configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    #Hyprland
    hyprland = {
      url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland-contrib = {
      url = "github:hyprwm/contrib";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprpicker.url = "github:hyprwm/hyprpicker";
    hyprlock = {
      url = "github:hyprwm/Hyprlock";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hypridle = {
      url = "github:hyprwm/Hypridle";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
    };

    #wallpaper
    swww = {
      url = "github:LGFae/swww";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    #nix formatter
    alejandra = {
      url = "github:kamadorueda/alejandra/3.0.0";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    #bar
    waybar = {
      url = "github:alexays/waybar";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    ags = {
      url = "github:Aylur/ags";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    gBar.url = "github:scorpion-26/gBar";
    eww = {
      url = "github:elkowar/eww";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    #runner
    anyrun = {
      url = "github:Kirottu/anyrun";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    #home-manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    #movie
    lobster = {
      url = "github:justchokingaround/lobster";
    };

    #neovim
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    # Neve = {
    #    url = "github:redyf/Neve";
    #inputs.nixpkgs.follows = "nixpkgs";
    #  };
    RustLover29 = {
      url = "github:RustLover2910/Nixvim-neve";
    };

    #wallpaper
    wallpaper = {
      url = "github:RustLover2910/wallpaper";
      flake = false;
    };

    #themes
    catppuccin-cava = {
      url = "github:catppuccin/cava";
      flake = false;
    };
    catppuccin-starship = {
      url = "github:catppuccin/starship";
      flake = false;
    };
    yazi-theme = {
      url = "github:yazi-rs/themes";
      flake = false;
    };
    btop-theme = {
      url = "github:catppuccin/btop";
      flake = false;
    };
    bat-theme = {
      url = "github:catppuccin/bat";
      flake = false;
    };
    lazygit-theme = {
      url = "github:catppuccin/lazygit";
      flake = false;
    };
    nix-colors.url = "github:misterio77/nix-colors";
    stylix.url = "github:danth/stylix";

    #eza (ls replacement)
    eza = {
      url = "github:eza-community/eza";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    #spicetify
    spicetify-nix.url = "github:the-argus/spicetify-nix";

    #Rust
    rust-overlay.url = "github:oxalica/rust-overlay";
  };

  outputs = {
    nixpkgs,
    self,
    home-manager,
    nix-colors,
    spicetify-nix,
    rust-overlay,
    ...
  } @ inputs: let
    username = "nathannix";
    system = "x86_64-linux";
  in {
    nixosConfigurations = {
      ${username} = nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs system username nix-colors;
        };
        modules = [
          ./modules/core/default.nix
          ({pkgs, ...}: {
            nixpkgs.overlays = [rust-overlay.overlays.default];
            environment.systemPackages = [pkgs.rust-bin.stable.latest.default];
          })
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useUserPackages = true;
              useGlobalPkgs = true;
              extraSpecialArgs = {inherit inputs username spicetify-nix nix-colors;};
              users.${username} = {
                imports = [
                  ./modules/home/default.nix
                ];
              };
            };
          }
        ];
      };
    };
  };
}
