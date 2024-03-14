{
  pkgs,
  username,
  ...
}: {
  home.packages = with pkgs; [
    rustc
    cargo
  ];
}
