{username, ...}: {
  wayland.windowManager.hyprland = {
    #enable = true;

    settings = {
      monitor = "eDP-1,1920x1080@60,0x0,1";

      input = {
        kb_layout = "us, de";
        kb_options = "grp:alt_shift_toggle";

        follow_mouse = 1;

        touchpad = {
          natural_scroll = 1;
        };

        sensitivity = 0.5; # -1.0 - 1.0, 0 means no modification.
      };

      exec-once = [
        "hyprpaper"
        "hyprctl setcursor Nordzy-cursors 24 &"
        "waybar"
        "wl-paste --type text --watch cliphist store "
        "polkit-gnome"
        "wl-gammarelay-rs"
        "nm-applet"
        "blueman-applet"
        "mako"
        "gsettings set org.gnome.desktop.wm.preferences button-layout : "
        "discord"
        "viber"
        "[workspace 4 silent] telegram-desktop"
        # "/usr/bin/env hyprland-monitor-attached /run/current-system/sw/bin/rokid-attached /run/current-system/sw/bin/rokid-detached"
      ];

      general = {
        gaps_in = 5;
        gaps_out = 7;
        border_size = 3;
        #col.active_border = 0xffb4befe 0xffeba0ac 0xff74c7ec 45deg
        "col.active_border" = "0xffeebebe 0xffca9ee6 0xffeebebe 45deg";
        "col.inactive_border" = "0xff303446";
        layout = "dwindle";
        "no_border_on_floating" = true;
      };

      misc = {
        disable_hyprland_logo = 1;
        vfr = true;
        disable_splash_rendering = true;
        mouse_move_enables_dpms = true;
      };

      decoration = {
        rounding = 7;

        blur = {
          enabled = true;
          size = 3;
          passes = 1;
          ignore_opacity = 1;
          new_optimizations = true;
          xray = false;
        };
        fullscreen_opacity = 1;
        drop_shadow = true;
        shadow_ignore_window = true;
        shadow_offset = "2 2";
        shadow_range = 20;
        shadow_render_power = 3;
        "col.shadow" = "0x66000000";
        active_opacity = 1.0;
        inactive_opacity = 0.8;
      };

      animation = {
        bezier = [
          "fluent_decel, 0, 0.2, 0.4, 1"
          "easeOutCirc, 0, 0.55, 0.45, 1"
          "easeOutCubic, 0.33, 1, 0.68, 1"
          "easeinoutsine, 0.37, 0, 0.63, 1"
        ];
        animation = [
          "windowsIn, 1, 1.7, easeOutCubic, slide" # window open
          "windowsOut, 1, 1.7, easeOutCubic, slide" # window close
          "windowsMove, 1, 2.5, easeinoutsine, slide" # everything in between, moving, dragging, resizing

          # fading
          "fadeIn, 1, 3, easeOutCubic" # fade in (open) -> layers and windows
          "fadeOut, 1, 3, easeOutCubic" # fade out (close) -> layers and windows
          "fadeSwitch, 1, 5, easeOutCirc" # fade on changing activewindow and its opacity
          "fadeShadow, 1, 5, easeOutCirc" # fade on changing activewindow for shadows
          "fadeDim, 1, 6, fluent_decel" # the easing of the dimming of inactive windows
          "border, 1, 2.7, easeOutCirc" # for animating the border's color switch speed
          "workspaces, 1, 2, fluent_decel, slide" # styles: slide, slidevert, fade, slidefade, slidefadevert
          "specialWorkspace, 1, 3, fluent_decel, slidevert"
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
      # Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
      bind = [
        "$mainMod, T, exec, kitty"
        "$mainMod, W, exec, floorp"
        "$mainMod, C, killactive"
        "$mainMod, E, exec, nemo"
        "$mainMod SHIFT, E, exec, kitty --hold yazi"
        "$mainMod, V, togglefloating,"
        "$mainMod, R, exec, "
        "$mainMod, P, pseudo, # dwindle"
        "$mainMod, J, togglesplit, # dwindle"
        "$mainMod, F, fullscreen, 0"
        "$mainMod SHIFT, F, fullscreen, 1"

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
        # Rofi
        #"$mainMod SHIFT, P, exec, bash /home/${username}/.config/rofi/bin/powermenu.sh"
        #"$mainMod SHIFT, B, exec, rofi-bluetooth"

        "$mainMod, Z, exec, hyprpicker -a"
        "$mainMod, R, exec, killall rofi || /home/${username}/.config/rofi/scripts/launcher_t1" #rofi -show drun
        "$mainMod, Q, exec, killall rofi || /home/${username}/.config/rofi/scripts/powermenu_t1"

        # Mute
        ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        ",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"

        #Audio
        ",XF86AudioPlay,exec, playerctl play-pause"
        ",XF86AudioNext,exec, playerctl next"
        ",XF86AudioPrev,exec, playerctl previous"
        ",XF86AudioStop,exec, playerctl stop"
      ];
      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];

      binde = [
        # Volume
        ", XF86AudioRaiseVolume, exec, wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%+"
        ", XF86AudioLowerVolume, exec, wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%-"
        "SHIFT, XF86AudioRaiseVolume, exec, wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SOURCE@ 5%+"
        "SHIFT, XF86AudioLowerVolume, exec, wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SOURCE@ 5%-"
        # Brightness
        ", xf86monbrightnessup, exec, brightnessctl set 5%+"
        ", xf86monbrightnessdown, exec, brightnessctl set 5%-"
      ];
    };
    #window rules
    extraConfig = ''
      #WindowsRules
      windowrule = float,^(motrix)$
      windowrule = float, ^(pavucontrol)$
      windowrulev2 = size 590 550,class:^(pavucontrol)$
      windowrulev2 = move 1321 50,class:^(pavucontrol)$
      windowrule = float, ^(polkit-gnome-authentication-agent-1)$
      windowrule = float, ^(kitty)$
      windowrule = float,^(.blueman-manager-wrapped)$
      windowrule = float, ^(Bitwarden)$
      windowrule = noshadow, ^(Windscribe)$
      windowrule = float, title:^(Password Required - Ablaze Floorp)$
      #windowrulev2 = noblur, class:^(kitty)$
      windowrulev2 = size 1200 650, class:^(kitty)$
      windowrulev2 = opacity 1.0 override 1.0 override,class:^(zoom)$
      windowrulev2 = opacity 1.0 override 1.0 override,class:^(floorp)$
    '';
  };
}
