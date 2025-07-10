{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    ./common/global.nix
    ./common/apps/desktop-apps.nix
    ./common/apps/hyprland-apps.nix
    ./common/apps/tui-apps.nix
  ];
}
