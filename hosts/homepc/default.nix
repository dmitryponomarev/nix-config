{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../common/global
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "homepc";

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.videoDrivers = [ "nvidia" ];
  services.xserver.displayManager.startx.enable = false;
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.desktopManager.cinnamon.enable = false;

  hardware.graphics.enable = true;
  hardware.nvidia.open = false;

  security.pam.services.swaylock = {};

  programs.hyprland.enable = true;

  # Configure keymap in X11
  services.xserver.xkb.layout = "se,ru";
  services.xserver.xkb.options = "eurosign:e,caps:escape";

  environment.systemPackages = with pkgs; [
  ];

  system.stateVersion = "25.05"; # Did you read the comment?

}

