{ pkgs, ... }:
{
  hardware.opengl.enable = true;
  hardware.opengl.driSupport = true;
  hardware.opengl.driSupport32Bit = true;
  hardware.enableRedistributableFirmware = true;
  hardware.bluetooth.enable = true;
  hardware.opengl.extraPackages = with pkgs; [

  ];
  powerManagement.cpuFreqGovernor = "balanced";
}
