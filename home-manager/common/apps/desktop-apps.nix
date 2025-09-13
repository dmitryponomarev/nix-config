{
  inputs,
  lib,
  config,
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    audacity
    brave
    telegram-desktop
    libnotify
    mpv
    gimp
    qbittorrent
  ];
}
