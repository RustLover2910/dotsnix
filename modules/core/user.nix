{
  pkgs,
  inputs,
  username,
  ...
}: {
  imports = [inputs.home-manager.nixosModules.home-manager];
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    extraSpecialArgs = {inherit inputs username;};
    users.${username} = {
      imports = [(import ./../home)];
      home = {
        username = "${username}";
        homeDirectory = "/home/${username}";
        stateVersion = "23.11";
      };
      programs.home-manager.enable = true;
    };
  };

  users.users.${username} = {
    isNormalUser = true;
    description = "${username}";
    extraGroups = ["networkmanager" "wheel" "input" "video" "audio" "storage"];
    shell = pkgs.fish;
  };
  nix.settings.allowed-users = ["${username}"];
}
