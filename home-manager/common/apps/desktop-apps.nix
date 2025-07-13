{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    firefox
    libnotify
    mpv
    tridactyl-native
  ];
}
