{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    audacity
    brave
    dbeaver-bin
    libreoffice-qt
    telegram-desktop
    libnotify
    remmina
    mpv
    gimp
    qbittorrent
  ];
}
