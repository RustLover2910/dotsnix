{pkgs, ...}: {
  hardware = {
    opengl = {
      enable = true;
      driSupport = true;
      driSupport32Bit = true;
      extraPackages = with pkgs; [
        intel-compute-runtime
      ];
    };
    enableRedistributableFirmware = true;
    bluetooth.enable = true;
  };
  services.auto-cpufreq = {
    enable = true;
    settings = {
      battery = {
        governor = "powersave";
        turbo = "auto";
      };
      charger = {
        governor = "performance";
        turbo = "auto";
      };
    };
  };
  # tmpfs on /tmp for speed and less strain on SSD/HDD during builds.
  fileSystems."/tmp" = {
    device = "none";
    fsType = "tmpfs";
    options = ["defaults" "size=30%" "mode=755"];
  };
}
