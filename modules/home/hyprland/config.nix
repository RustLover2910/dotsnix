{
  lib,
  pkgs,
  username,
  ...
}: {
  wayland.windowManager.hyprland = {
    #enable = true;

    settings = {
      monitor = "eDP-1,1920x1080@60,0x0,1";

      input = {
        kb_layout = "us, de";
        kb_options = "grp:alt_shift_toggle";
        kb_variant = "";
        kb_model = "";
        kb_rules = "";
        follow_mouse = 1;

        touchpad = {
          disable_while_typing = true;
          natural_scroll = 1;
        };

        sensitivity = 0.5; # -1.0 - 1.0, 0 means no modification.
      };

      exec-once = [
        "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
        #"${pkgs.hyprpaper}/bin/hyprpaper &"
        "gsettings set org.gnome.desktop.wm.preferences button-layout : "
        "portals"
        "swww-daemon &"
        "swww img /home/${username}/wallpaper/source/SadCloud.png"
        #"polkit-gnome"
        "wl-paste --type text --watch cliphist store "
        "${pkgs.networkmanagerapplet}/bin/nm-applet &"
        "${pkgs.blueman}/bin/blueman-applet &"
        "${pkgs.wl-gammarelay-rs}/bin/wl-gammarelay-rs"
        "${pkgs.waybar}/bin/waybar &"
      ];

      general = {
        gaps_in = 5;
        gaps_out = 7;
        border_size = 3;

        "col.active_border" = "0xffb4befe 0xffF7BCCA";
        "col.inactive_border" = "0xff303446";
        layout = "dwindle";
        "no_border_on_floating" = true;
      };

      debug = {
        disable_logs = 0;
      };

      misc = {
        disable_hyprland_logo = 1;
        #vfr = true;
        mouse_move_enables_dpms = true;
        splash_font_family = "Iosevka Nerd Font";
      };

      decoration = {
        rounding = 7;

        blur = {
          enabled = true;
          size = 4;
          #  passes = 1;
          ignore_opacity = 1;
          contrast = 1.3;
          new_optimizations = true;
          xray = 0;
        };

        fullscreen_opacity = 1;
        drop_shadow = true;
        shadow_ignore_window = true;
        shadow_offset = "2 2";
        shadow_range = 20;
        shadow_render_power = 3;
        "col.shadow" = lib.mkDefault "0x66000000";
        active_opacity = 1.0;
        inactive_opacity = 0.8;
      };

      animation = {
        bezier = [
          "wind, 0.05, 0.9, 0.1, 1.05"
          "winIn, 0.1, 1.1, 0.1, 1.1"
          "winOut, 0.3, -0.3, 0, 1"
          "liner, 1, 1, 1, 1"
        ];
        animation = [
          "windows, 1, 6, wind, slide"
          "windowsIn, 1, 6, winIn, slide"
          "windowsOut, 1, 5, winOut, slide"
          "windowsMove, 1, 5, wind, slide"
          "border, 1, 1, liner"
          "borderangle, 1, 30, liner, loop"
          "fade, 1, 10, default"
          "workspaces, 1, 5, wind"
        ];
      };

      dwindle = {
        pseudotile = 1; # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
        preserve_split = 1; # you probably want this
      };

      master = {
        new_is_master = true;
      };

      gestures = {
        workspace_swipe = 1;
      };

      "$mainMod" = "SUPER";
      bind = [
        "$mainMod, T, exec, foot"
        "$mainMod, W, exec, waybar"
        "$mainMod, Q, exec, wlogout"
        "$mainMod, E, exec, nemo"
        "$mainMod, A, exec, librewolf"
        "$mainMod, G, exec, gmode"

        "$mainMod, V, togglefloating,"
        "$mainMod, P, pseudo, # dwindle"
        "$mainMod, J, togglesplit, # dwindle"
        "$mainMod, F, fullscreen, 0"

        "$mainMod SHIFT, F, fullscreen, 1"
        "$mainMod SHIFT, W, exec, kwb"
        "$mainMod SHIFT, E, exec, foot --hold yazi"

        #date time
        "$mainMod, D, exec, dt ti"
        "$mainMod SHIFT, D, exec, dt da"

        # Close a window or quit Hyprland.
        "$mainMod, C, killactive,"
        "$mainMod SHIFT, M, exit,"

        #hyprexpo
        #"SUPER, grave, hyprexpo:expo, toggle"

        # Move focus with mainMod + arrow keys
        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up, movefocus, u"
        "$mainMod, down, movefocus, d"

        # Switch workspaces with mainMod + [0-9]
        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"

        # Move active window to a workspace with mainMod + SHIFT + [0-9]
        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3"
        "$mainMod SHIFT, 4, movetoworkspace, 4"
        "$mainMod SHIFT, 5, movetoworkspace, 5"
        "$mainMod SHIFT, 6, movetoworkspace, 6"
        "$mainMod SHIFT, 7, movetoworkspace, 7"
        "$mainMod SHIFT, 8, movetoworkspace, 8"
        "$mainMod SHIFT, 9, movetoworkspace, 9"
        "$mainMod SHIFT, 0, movetoworkspace, 10"

        # Scroll through existing workspaces with mainMod + scroll
        "$mainMod, mouse_down, workspace, e+1"
        "$mainMod, mouse_up, workspace, e-1"

        #Move Focus
        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up, movefocus, u"
        "$mainMod, down, movefocus, d"

        # Display Temp(nightlight)
        "$mainMod SHIFT, R ,exec, busctl --user set-property rs.wl-gammarelay / rs.wl.gammarelay Temperature q 6500"
        "$mainMod SHIFT, S, exec, busctl --user -- call rs.wl-gammarelay / rs.wl.gammarelay UpdateTemperature n +100"
        "$mainMod, S , exec, busctl --user -- call rs.wl-gammarelay / rs.wl.gammarelay UpdateTemperature n -100"

        # Lockscreen
        "$mainMod SHIFT, L, exec, hyprlock"

        #color picker
        "$mainMod, Z, exec, hyprpicker -a"
        "$mainMod, R, exec, anyrun"

        # Mute
        ",XF86AudioMute, exec, volctrl mute"
        ",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"

        #Audio
        ",XF86AudioPlay,exec, playerctl play-pause"
        ",XF86AudioNext,exec, playerctl next"
        ",XF86AudioPrev,exec, playerctl previous"
        ",XF86AudioStop,exec, playerctl stop"

        # screenshot
        "$mainMod, Print, exec, grimblast --notify --cursor save area ~/Pictures/Screenshots/$(date +'%Y-%m-%d-At-%Ih%Mm%Ss').png"
        ",Print, exec, grimblast --notify --cursor  copy area"
      ];

      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];

      binde = [
        # Volume
        ", XF86AudioRaiseVolume, exec, volctrl up "
        ", XF86AudioLowerVolume, exec, volctrl down"

        # Brightness
        ", xf86monbrightnessup, exec, brightctrl up"
        ", xf86monbrightnessdown, exec, brightctrl down"
      ];

      #window rules
      windowrule = [
        "float, ^(Motrix)$"
        "float, ^(pavucontrol)$"
        "float, ^(polkit-gnome-authentication-agent-1)$"
        "float, ^(foot)$"
        "float, ^(.blueman-manager-wrapped$)"
        "float,^(Bitwarden)$"
        "float, ^(nemo)$"
      ];

      windowrulev2 = [
        "size 590 550,class:^(pavucontrol)$"
        "move 1321 1000,class:^(pavucontrol)$"
        "size 1200 700, class:^(foot)$"

        #opacity
        "opacity 0.9 override 0.8 override,class:^(foot)$"
        "opacity 1.0 override 1.0 override,class:^(zoom)$"
        "opacity 1.0 override 1.0 override,title:^(Save Document?)$"
        "opacity 1.0 override 1.0 override,class:^(floorp)$"
        "opacity 1.0 override 1.0 override,class:^(firefox)$"
        "opacity 1.0 override 1.0 override,class:^(org.gnome.Loupe)$"
        "opacity 1.0 override 1.0 override,title:^(Zoom Meeting)$"
        "opacity 1.0 override 1.0 override,class:^(com.github.xournalpp.xournalpp)$"

        "float,class:^(file_progress)$"
        "float,class:^(confirm)$"
        "float,class:^(dialog)$"
        "float,class:^(download)$"
        "float,class:^(notification)$"
        "float,class:^(error)$"
        "float,class:^(confirmreset)$"
        "float,title:^(Open File)$"
        "float,title:^(branchdialog)$"
        "float,title:^(Confirm to replace files)$"
        "float,title:^(File Operation Progress)$"
        "float,title:^(Save Document?)$"
        "float,title:^(Password Required - Ablaze Floorp)$"
        "float,title:^(Save As)$"
        "float,class:^(confirm)$"
      ];
    };
    extraConfig = ''
      layerrule = blur,waybar
    '';
    #extraConfig = ''
    #   plugin {
    #      hyprexpo {
    #          columns = 3
    #          gap_size = 5
    #          bg_col = rgb(111111)
    #          workspace_method = center current # [center/first] [workspace] e.g. first 1 or center m+1
    #
    #         enable_gesture = true # laptop touchpad, 4 fingers
    #          gesture_distance = 300 # how far is the "max"
    #          gesture_positive = true # positive = swipe down. Negative = swipe# up.
    #     }
    #  }
    # '';
  };
}
