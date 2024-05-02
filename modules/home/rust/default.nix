{
  pkgs,
  fenix,
  ...
}: {
  nixpkgs.overlays = [fenix.overlays.default];
  home.Packages = with pkgs; [
    (fenix.complete.withComponents [
      "cargo"
      "clippy"
      "rust-src"
      "rustc"
      "rustfmt"
    ])
    rust-analyzer-nightly
  ];
}
