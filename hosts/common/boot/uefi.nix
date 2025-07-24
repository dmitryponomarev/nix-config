{
  config,
  lib,
  pkgs,
  ...
}:

{
  imports = [
    ./plymouth.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
}
