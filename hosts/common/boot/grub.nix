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

  boot.loader.grub = {
    enable = true;
    device = "/dev/sda";
  };
}
