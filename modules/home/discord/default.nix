{pkgs, ...}: {
  imports = [
    #./catppuccin-frappe.nix
    ./catppuccin-frappe-rosewater.nix
    ./theme.nix
    ./nord.nix
  ];

  home.packages = with pkgs; [
    (discord.override {
      #nss = pkgs.nss_3_90_2;
      withVencord = true;
      withOpenASAR = true;
    })
  ];
}
