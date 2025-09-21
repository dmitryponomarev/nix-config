{
  config,
  pkgs,
  nix-colors,
  ...
}: {
  wayland.windowManager.hyprland = {
    settings = {
      monitor = [
        "HDMI-A-1,preferred,0x0,auto"
        "DP-1,preferred,1920x0,auto"
        ",preferred,auto,1"
      ];

      exec-once = [
        # "hyprpanel"
        # "hyprpaper"
        "waybar"
        # "keepassxc"
        "nm-applet"
        "blueman-applet"
        "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
      ];

      input = {
        kb_layout = "se,ru";
        kb_options = "grp:alt_shift_toggle,ctrl:nocaps";
        numlock_by_default = true;
        repeat_delay = 300;
        repeat_rate = 60;
        follow_mouse = 1;
        sensitivity = 0.3;
      };

      general = {
        gaps_in = 5;
        gaps_out = 10;
        border_size = 2;
        "col.active_border" = "rgba(${config.colorScheme.palette.base0D}e0)";
        "col.inactive_border" = "rgba(${config.colorScheme.palette.base01}e0)";
        allow_tearing = false;
        layout = "master";
      };

      decoration = {
        rounding = 0;
        blur = {
          enabled = true;
          size = 5;
          passes = 2;
          # new_optimizations = true;
        };
        shadow = {
          enabled = false;
        };
        dim_special = 0.5;
        # inactive_opacity = 1.0;
        # active_opacity = 1.0;
        # fullscreen_opacity = 1.0;
      };

      animations = {
        enabled = false;
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "master";
        new_on_top = true;
        special_scale_factor = 0.95;
      };

      # gestures = {
      #   workspace_swipe = false;
      # };

      misc = {
        disable_hyprland_logo = true;
        disable_splash_rendering = true;
        vfr = true;
        vrr = 0;
        # mouse_move_enables_dpms = true;
        # key_press_enables_dpms = false;
      };

      cursor = {
        no_hardware_cursors = 1;
        enable_hyprcursor = false;
      };

      ecosystem = {
        no_update_news = true;
        no_donation_nag = true;
      };
    };
  };
}
