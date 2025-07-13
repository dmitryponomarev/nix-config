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
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
  };

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
