{
  inputs,
  lib,
  config,
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    brave
    telegram-desktop
    libnotify
    mpv
    gimp
  ];
}
