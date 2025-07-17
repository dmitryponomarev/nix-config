{
  inputs,
  lib,
  config,
  pkgs,
  ...
}:
{
  imports = [
    ../../dotfiles/hypr/general.nix
    ../../dotfiles/hypr/binds.nix
    ../../dotfiles/hypr/rules.nix
  ];

  wayland.windowManager.hyprland.enable = true;

  home.packages = with pkgs; [
    grim
    networkmanagerapplet
    slurp
    swappy
    waybar
    wf-recorder
    wl-clipboard
  ];

  # programs.hyprpanel = {
  #   enable = true;
  #
  #   settings = {
  #     layout = {
  #       "bar.layouts" = {
  #         "0" = {
  #           left = [
  #             "notifications"
  #           ];
  #           middle = [ "workspaces" ];
  #           right = [
  #             "volume"
  #             "systray"
  #             # "notifications"
  #             "network"
  #             "bluetooth"
  #             "clock"
  #             "dashboard"
  #           ];
  #         };
  #         "1" = {
  #           left = [
  #             "notifications"
  #           ];
  #           middle = [ "workspaces" ];
  #           right = [
  #             "volume"
  #             "systray"
  #             # "notifications"
  #             "network"
  #             "bluetooth"
  #             "clock"
  #             "dashboard"
  #           ];
  #         };
  #         "2" = {
  #           left = [
  #             "notifications"
  #           ];
  #           middle = [ "workspaces" ];
  #           right = [
  #             "volume"
  #             "systray"
  #             # "notifications"
  #             "network"
  #             "bluetooth"
  #             "clock"
  #             "dashboard"
  #           ];
  #         };
  #       };
  #     };
  #     bar = {
  #       clock = {
  #         format = "%Y-%m-%d %H:%M:%S";
  #       };
  #       launcher.autoDetectIcon = true;
  #       workspaces = {
  #         workspaces = 7;
  #         show_icons = false;
  #         numbered_active_indicator = "color";
  #         show_numbered = true;
  #       };
  #       windowTitle = {
  #         label = false;
  #         show_icon = false;
  #         show_title = false;
  #         show_class = false;
  #         show_pid = false;
  #       };
  #     };
  #
  #     autoHide = "fullscreen";
  #     battery.hideLabelWhenFull = true;
  #
  #     menus.clock = {
  #       time = {
  #         military = true;
  #         hideSeconds = false;
  #       };
  #       weather.unit = "metric";
  #     };
  #
  #     menus.dashboard.directories.enabled = false;
  #     menus.dashboard.stats.enable_gpu = true;
  #
  #     theme.bar.transparent = true;
  #     theme.name = "tokyo_night";
  #
  #     theme.font = {
  #       name = "fira-code";
  #       size = "11px";
  #     };
  #   };
  # };
}
