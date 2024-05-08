{username, ...}: {
  imports = [
    ./bootloader.nix
    ./hardware.nix
    ./xserver.nix
    ./network.nix
    ./pipewire.nix
    ./program.nix
    ./security.nix
    ./services.nix
    ./system.nix
    ./virtualization.nix
    ./polkit.nix
    ./nix.nix
    ./font.nix
    ./user.nix
    ./wayland.nix
    ./overlay.nix
    ./../../hosts/nixos/hardware-configuration.nix
  ];

  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = [
      "openssl-1.1.1w"
    ];
  };
}
