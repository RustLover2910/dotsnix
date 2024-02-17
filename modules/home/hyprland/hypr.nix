{ ... }:
{
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

        sensitivity = 0; # -1.0 - 1.0, 0 means no modification.
      };

      general =
        {
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
        # disable_hyprland_logo = 1;
        vfr = true;
        # disable_splash_rendering = true;
        mouse_move_enables_dpms = true;
      };

      decoration = {
        # See https://wiki.hyprland.org/Configuring/Variables/ for more

        rounding = 5;

        blur = {
          enabled = true;
          size = 3;
          passes = 1;
          ignore_opacity = 1;
          new_optimizations = true;
          xray = false;
        };
        #multisample_edges = true
        fullscreen_opacity = 1;
        drop_shadow = true;
        shadow_ignore_window = true;
        shadow_offset = "2 2";
        shadow_range = 20;
        shadow_render_power = 3;
        "col.shadow" = "0x66000000";
        active_opacity = 1.0;
        inactive_opacity = 1.0;
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

    };
  };
}
