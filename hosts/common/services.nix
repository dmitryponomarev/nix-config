{
  config,
  lib,
  pkgs,
  ...
}:

{
  services.openssh = {
    enable = true;
    ports = [ 5011 ];
    settings = {
      PasswordAuthentication = false;
      KbdInteractiveAuthentication = false;
      PermitRootLogin = "no";
      AllowUsers = [ "dmpo" ];
    };
  };

  services.fail2ban.enable = true;

  services.endlessh = {
    enable = true;
    port = 22;
    openFirewall = true;
  };
}
