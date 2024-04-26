{lib, ...}: {
  services = {
    mako = {
      enable = true;
      font = lib.mkDefault "JetBrainsMono Nerd Font 13";
      padding = "15";
      height = 100;
      width = 500;
      defaultTimeout = 5000;
      borderSize = 2;
      borderRadius = 5;
      ## backgroundColor = "#303446";
      # borderColor = "#b4befe";
      # progressColor = "over #313244";
      # textColor = "#cdd6f4";
      icons = true;
      actions = true;
      extraConfig = ''
        text-alignment=center
        [urgency=high]
        border-color=#fab387
      '';
    };
  };
}
