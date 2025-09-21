{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    ../../dotfiles/hypr/general.nix
    ../../dotfiles/hypr/binds.nix
    ../../dotfiles/hypr/rules.nix
    ../../dotfiles/hyprpaper
    ../../dotfiles/wlogout
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
}
