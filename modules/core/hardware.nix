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
        turbo = "never";
      };
      charger = {
        governor = "performance";
        turbo = "auto";
      };
    };
  };
  #services = {
  #  power-profiles-daemon.enable = false;
  # tlp = {
  #    enable = true;
  #    settings = {
  #      CPU_SCALING_GOVERNOR_ON_AC = "performance";
  #     CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
  #      PLATFORM_PROFILE_ON_AC = "performance";
  #      CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
  #     CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
  #      CPU_BOOST_ON_AC = 1;
  #     CPU_MIN_PERF_ON_AC = 0;
  #      CPU_MAX_PERF_ON_AC = 100;
  #     CPU_MIN_PERF_ON_BAT = 0;
  #    CPU_MAX_PERF_ON_BAT = 90;
  #   };
  # };
  #};
  # powerManagement.cpuFreqGovernor = "balanced";
}
