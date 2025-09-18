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
      PubkeyAuthentication = true;
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

  services.blueman.enable = true;

  services.syncthing = {
    enable = true;
    openDefaultPorts = true;
    dataDir = "/home/dmpo/sync";
    configDir = "/home/dmpo/sync/.config/syncthing";
    user = "dmpo";
    group = "users";
    settings = {
      devices = {
        "homelaptop" = {
          id = "JUJGU72-DAWFA5X-VF73CQ3-B52GJBA-BC7LPIS-EBXTDZL-T66UJTA-MBSDXQZ";
        };
      };
      folders = {
        "sync" = {
          path = "/home/dmpo/sync";
          devices = [ "homelaptop" ];
          ignorePerms = false;
        };
      };
    };
    key = "/run/secrets/syncthing_key";
    cert = "/run/secrets/syncthing_cert";
    # extraFlags = [ "--no-default-folder" ];
  };
}
