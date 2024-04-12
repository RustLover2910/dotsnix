{
  pkgs,
  username,
  ...
}: {
  users.users.${username} = {
    isNormalUser = true;
    description = "${username}";
    extraGroups = ["networkmanager" "wheel" "input" "video" "audio" "storage"];
    shell = pkgs.fish;
  };
}
