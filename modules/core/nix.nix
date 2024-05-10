{username, ...}: {
  nix = {
    gc = {
      automatic = true;
      options = "--delete-older-than 2d";
    };
    optimise.automatic = true;

    settings = {
      auto-optimise-store = true;

      experimental-features = ["nix-command" "flakes"];

      allowed-users = ["${username}"];
      trusted-users = ["root" "@wheel"];
      substituters = [
        "https://hyprland.cachix.org"
        "https://cache.nixos.org"
      ];

      trusted-public-keys = [
        "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
        "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
      ];
    };
  };
}
