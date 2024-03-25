{pkgs, ...}: {
  imports =
    [(import ./catppuccin-frappe.nix)]
    ++ [(import ./everforest.nix)];
  home.packages = with pkgs; [
    (discord.override {
      #nss = pkgs.nss_3_90_2;
      withVencord = true;
      withOpenASAR = true;
    })
  ];
}
