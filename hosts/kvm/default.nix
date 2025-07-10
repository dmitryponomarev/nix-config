{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../common/default.nix
      ../common/boot/uefi.nix
      ../common/graphics/xserver.nix
      ../common/hyprland
    ];

  networking.hostName = "kvm";
}

