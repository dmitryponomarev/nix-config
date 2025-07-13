{
  config,
  lib,
  pkgs,
  ...
}:

{
  imports = [
    ./hardware-configuration.nix
    ../common/default.nix
    ../common/graphics/xserver.nix
    # ../common/hyprland
    ../common/boot/uefi.nix
    # NVIDIA disabled until problem with kernel is solved
    # ../common/graphics/nvidia.nix
  ];

  networking.hostName = "homepc";
  services.xserver.desktopManager.cinnamon.enable = true;
}
