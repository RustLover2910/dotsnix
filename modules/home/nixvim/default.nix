{
  pkgs,
  inputs,
  ...
}: {
  imports = [inputs.nixvim.homeManagerModules.nixvim];

  programs.nixvim = {
    colorschemes.everforest.enable = true;
    options = {

      }
    }
}
