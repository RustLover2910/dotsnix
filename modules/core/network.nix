{ pkgs, ... }:
{
  networking = {
    hostName = "ultimatumnix";
    networkmanager.enable = true;
    #nameservers = [ "1.1.1.1" ];
    firewall = {
      enable = true;
    };
  };

  environment.systemPackages = with pkgs; [
    networkmanagerapplet
    cloudflare-warp
  ];

  systemd.packages = [ pkgs.cloudflare-warp ]; # for warp-cli
  systemd.targets.multi-user.wants = [ "warp-svc.service" ]; # causes warp-svc to be started automatically
}
