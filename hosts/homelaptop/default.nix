{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../common/default.nix
      ../common/graphics/xserver.nix
      ../common/boot/grub.nix
    ];

  networking.hostName = "homelaptop";
  services.xserver.desktopManager.cinnamon.enable = true;
}

