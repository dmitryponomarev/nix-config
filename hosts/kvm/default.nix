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

  networking.hostName = "kvm";

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  # services.xserver.videoDrivers = [ "nvidia" ];
  services.xserver.displayManager.startx.enable = true;
  services.xserver.displayManager.lightdm.enable = false;
  services.xserver.desktopManager.cinnamon.enable = true;


  hardware.graphics.enable = false;
  # hardware.nvidia.open = false;
  # hardware.nvidia.modesetting.enable = true;
  # hardware.nvidia.powerManagement.enable = false;
  # hardware.nvidia.powerManagement.finegrained = false;
  # hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.legacy_535;
  # hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.stable;
  # hardware.nvidia.forceFullCompositionPipeline = true;

  # Configure keymap in X11
  services.xserver.xkb.layout = "se,ru";
  services.xserver.xkb.options = "eurosign:e,caps:escape";

  environment.systemPackages = with pkgs; [
    kitty
  ];

  system.stateVersion = "25.05"; # Did you read the comment?

}

