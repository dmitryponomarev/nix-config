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
  # services.xserver.videoDrivers = [ "nvidia" ];
  services.xserver.displayManager.startx.enable = true;
  services.xserver.displayManager.lightdm.enable = false;
  services.xserver.desktopManager.cinnamon.enable = false;


  hardware.graphics.enable = true;
  # hardware.nvidia.open = false;
  # hardware.nvidia.modesetting.enable = true;
  # hardware.nvidia.powerManagement.enable = false;
  # hardware.nvidia.powerManagement.finegrained = false;
  # hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.legacy_535;
  # hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.stable;
  # hardware.nvidia.forceFullCompositionPipeline = true;

  security.pam.services.swaylock = {};
  security.pam.services.hyprlock = {};

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
  };

  programs.hyprland.enable = true;
  programs.hyprland.xwayland.enable = true;
  programs.hyprland.withUWSM = true;
  programs.xwayland.enable = true;

  # Configure keymap in X11
  services.xserver.xkb.layout = "se,ru";
  services.xserver.xkb.options = "eurosign:e,caps:escape";

  environment.systemPackages = with pkgs; [
    kitty
  ];

  system.stateVersion = "25.05"; # Did you read the comment?

}

