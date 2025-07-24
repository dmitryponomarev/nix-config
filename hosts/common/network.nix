{
  config,
  lib,
  pkgs,
  ...
}:

{
  networking = {
    networkmanager.enable = true;
    firewall = {
      enable = true;
      allowedTCPPorts = [ 5011 ];
      # allowedUDPPorts = [ 53 ];
    };
  };
}
