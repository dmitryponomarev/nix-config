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

  # environment.variables = {
  #   LIBVA_DRIVER_NAME = "nvidia";
  #   NVD_BACKEND = "direct";
  #   MOZ_DISABLE_RDD_SANDBOX = "1";
  #   GBM_BACKEND = "nvidia-drm";
  #   _GLX_VENDOR_LIBRARY_NAME = "nvidia";
  #   WLR_DRM_NO_ATOMIC = "1";
  # };

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.videoDrivers = [ "nvidia" ];
  services.xserver.displayManager.startx.enable = true;
  services.xserver.displayManager.lightdm.enable = false;
  services.xserver.desktopManager.cinnamon.enable = true;

  hardware.graphics.enable = true;
  hardware.nvidia.open = false;
  hardware.nvidia.modesetting.enable = true;
  hardware.nvidia.powerManagement.enable = false;
  hardware.nvidia.powerManagement.finegrained = false;
  hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.stable;

  security.pam.services.swaylock = {};

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.nvidia.acceptLicense = true;

  #programs.hyprland.enable = true;
  #programs.hyprland.xwayland.enable = true;

  # Configure keymap in X11
  services.xserver.xkb.layout = "se,ru";
  services.xserver.xkb.options = "eurosign:e,caps:escape";

  environment.systemPackages = with pkgs; [
  ];

  system.stateVersion = "25.05"; # Did you read the comment?

}

