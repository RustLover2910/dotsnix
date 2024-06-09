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
    supportedFilesystems = ["ntfs"];
    kernelPackages = pkgs.linuxPackages_latest;
  };
  fileSystems."/home/${username}/MIGHTYBACKUP" = {
    device = "/dev/disk/by-uuid/5ba1e8c1-020d-41f6-91a8-1941cc77de07";
    fsType = "ext4";
    options = ["defaults" "user"];
  };
}
