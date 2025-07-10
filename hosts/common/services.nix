{ config, lib, pkgs, ... }:

{
  services.openssh.enable = true;
  services.openssh.settings.PasswordAuthentication = false;
}
