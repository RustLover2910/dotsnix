{
  custom ? {
    font = "Iosevka Nerd Font";
    fontsize = "16";
    primary_accent = "cba6f7";
    secondary_accent = "89b4fa";
    tertiary_accent = "f5f5f5";
    background = "11111B";
    opacity = ".98";
  },
  ...
}: {
  programs.waybar.settings.mainBar = {
    position = "bottom";
    layer = "bottom";
    # height= 15;
    margin-top = 0;
    margin-bottom = 0;
    margin-left = 0;
    margin-right = 0;
    modules-left = [
      "custom/launcher"
      "custom/playerctl#backward"
      "custom/playerctl#play"
      "custom/playerctl#forward"
      "tray"
    ];
    modules-center = [
      "hyprland/workspaces"
    ];
    modules-right = [
      # "tray"
      "cpu"
      "memory"
      "hyprland/language"
      "pulseaudio"
      #"network"
      "backlight"
      "battery"
      "clock"
    ];

    clock = {
      format = "  {:%H:%M}";
      tooltip = "true";
      tooltip-format = "<tt><small>{calendar}</small></tt>";
      format-alt = "  {:%H:%M    %Y, %d %B, %A}";

      calendar = {
        mode = "year";
        mode-mon-col = 3;
        weeks-pos = "right";
        on-scroll = 1;
      };

      actions = {
        on-click-right = "mode";
        on-click-forward = "tz_up";
        on-click-backward = "tz_down";
        on-scroll-up = "shift_up";
        on-scroll-down = "shift_down";
      };
    };

    "hyprland/workspaces" = {
      active-only = false;
      all-outputs = false;
      disable-scroll = false;
      on-scroll-up = "hyprctl dispatch workspace e-1";
      on-scroll-down = "hyprctl dispatch workspace e+1";
      format = "{name}";
      on-click = "activate";
      format-icons = {
        urgent = "";
        active = "";
        default = "";
        sort-by-number = true;
      };
    };
    "hyprland/language" = {
      "format" = "󰌌  {}";
      "format-en" = "EN";
      "format-de" = "DE";
    };

    "custom/playerctl#backward" = {
      format = "󰙣 ";
      on-click = "playerctl previous";
    };
    "custom/playerctl#play" = {
      format = "{icon}";
      return-type = "json";
      exec = "playerctl -a metadata --format '{\"text\": \"{{artist}} - {{markup_escape(title)}}\", \"tooltip\": \"{{playerName}} : {{markup_escape(title)}}\", \"alt\": \"{{status}}\", \"class\": \"{{status}}\"}' -F";
      on-click = "playerctl play-pause";
      on-scroll-up = "playerctl volume .05+";
      on-scroll-down = "playerctl volume .05-";
      format-icons = {
        Playing = "<span>󰏥 </span>";
        Paused = "<span> </span>";
        Stopped = "<span> </span>";
      };
    };
    "custom/playerctl#forward" = {
      format = "󰙡 ";
      on-click = "playerctl next";
    };
    memory = {
      format-alt = "󰟜 {}%";
      format = "󰟜 {used} GiB"; # 
      interval = 2;
    };
    cpu = {
      format = "  {usage}%";
      format-alt = "  {avg_frequency} GHz";
      interval = 2;
    };
    disk = {
      # path = "/";
      format = "󰋊 {percentage_used}%";
      interval = 60;
    };
    network = {
      format-wifi = "  {signalStrength}%";
      format-ethernet = "󰀂 ";
      tooltip-format = "Connected to {essid} {ifname} via {gwaddr}";
      format-linked = "{ifname} (No IP)";
      format-disconnected = "󰖪 ";
    };
    "backlight" = {
      device = "intel_backlight";
      format = "{icon} {percent}%";
      format-icons = [
        "󱩎"
        "󱩏"
        "󱩐"
        "󱩑"
        "󱩒"
        "󱩓"
        "󱩔"
        "󱩕"
        "󰛨"
      ];
    };
    tray = {
      icon-size = 20;
      spacing = 8;
    };
    pulseaudio = {
      format = "{icon} {volume}%";
      format-muted = "󰖁 0%";
      format-icons = {
        default = [
          ""
          " "
        ];
      };
      scroll-step = 5;
      on-click-right = "pavucontrol || pkill pavucontrol";
      on-click = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
    };
    "custom/launcher" = {
      format = "";
      on-click = "anyrun || pkill anyrun";
      #on-click-right = "pkill wofi || wallpaper-picker";
      tooltip = "true";
    };
    battery = {
      interval = 2;
      states = {
        #// "good": 95;
        warning = 50;
        critical = 30;
      };
      format = "{icon} {capacity}% ";
      format-time = " {H}H {M}M ";
      format-alt = " {icon} {time} ";
      format-charging = " 󰂄 {capacity}% ";
      format-plugged = " 󰂄 {capacity}% ";
      format-icons = [
        "󰁺"
        "󰁻"
        "󰁼"
        "󰁽"
        "󰁾"
        "󰁿"
        "󰂀"
        "󰂁"
        "󰂂"
        "󰁹"
      ];
    };
  };
}
