{
  pkgs,
  username,
  ...
}: {
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      systemd-boot.configurationLimit = 10;
    };
    kernelPackages = pkgs.linuxPackages_latest;
  };
  fileSystems."/home/${username}/MIGHTYBACKUP" = {
    device = "/dev/nvme0n1p7";
    fsType = "ext4";
    options = ["defaults" "user"];
  };
}
