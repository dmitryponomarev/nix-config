{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    ../common/default_server.nix
    ../common/graphics/xserver.nix
    ../common/boot/uefi.nix
  ];

  boot.kernelPackages = pkgs.linuxPackages_latest;
  networking.hostName = "nix-main";
  services.xserver.desktopManager.cinnamon.enable = false;
  time.hardwareClockInLocalTime = true;
}
