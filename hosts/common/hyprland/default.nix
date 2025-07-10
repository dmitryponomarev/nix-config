{ config, lib, pkgs, ... }:

{
  security.pam.services.swaylock = {};
  security.pam.services.hyprlock = {};

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
  };

  programs.hyprland.enable = true;
  programs.hyprland.xwayland.enable = true;
  programs.hyprland.withUWSM = true;
  programs.xwayland.enable = true;
}
