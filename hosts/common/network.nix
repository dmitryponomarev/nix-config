{
  config,
  lib,
  pkgs,
  ...
}:

{
  networking = {
  	nftables.enable = true;
    networkmanager.enable = true;
    firewall = {
      enable = true;
      allowedTCPPorts = [ 5011 ];
      # allowedUDPPorts = [ 53 ];
    };
  };
}
