{
  description = "ultimatumnix's nixos configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    #Hyprland
    hyprland = {
      url = "github:hyprwm/Hyprland";
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

    #themes
    catppuccin-cava = {
      url = "github:catppuccin/cava";
      flake = false;
    };
    catppuccin-lazygit = {
      url = "github:catppuccin/lazygit";
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
    prism.url = "github:IogaMaster/prism";
    nix-colors.url = "github:misterio77/nix-colors";

    #eza (ls replacement)
    eza = {
      url = "github:eza-community/eza";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    nixvim,
    self,
    home-manager,
    ...
  } @ inputs: let
    username = "nathannix";
    system = "x86_64-linux";
  in {
    #nixosConfigurations = import ./modules/core/default.nix {
    #   inherit self nixpkgs inputs username;
    # };

    nixosConfigurations = {
      ${username} = nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs system username;
        };
        modules = [
          ./modules/core/default.nix
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useUserPackages = true;
              useGlobalPkgs = true;
              extraSpecialArgs = {inherit inputs username;};
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
