{pkgs, ...}: {
  imports =
    [(import ./theme-template.nix)]
    ++ [(import ./everforest.nix)];
  home.packages = with pkgs; [
    (discord.override {
      #nss = pkgs.nss_3_90_2;
      withVencord = true;
      withOpenASAR = true;
    })
  ];
}
