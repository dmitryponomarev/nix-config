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
    firefox
    libnotify
    mpv
  ];
}
