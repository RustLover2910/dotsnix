{
  pkgs,
  inputs,
  spicetify-nix,
  ...
}: let
  spicePkgs = spicetify-nix.packages.${pkgs.system}.default;
in {
  # import the flake's module for your system
  imports = [
    inputs.spicetify-nix.homeManagerModule
  ];

  #home.packages = with pkgs; [spotify];

  # configure spicetify :)
  programs.spicetify = {
    enable = true;
    theme = spicePkgs.themes.catppuccin;
    colorScheme = "frappe";

    enabledExtensions = with spicePkgs.extensions; [
      fullAppDisplay
      shuffle # shuffle+ (special characters are sanitized out of ext names)
    ];
  };
}
