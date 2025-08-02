{
  config,
  lib,
  pkgs,
  ...
}:

{
  sops.defaultSopsFile = ../../secrets.yaml;
  sops.age.keyFile = "/var/lib/age/keys.txt";
  sops.secrets = {
    ssh_config = {
      group = config.users.users.dmpo.group;
      owner = config.users.users.dmpo.name;
      mode = "0600";
      path = "/home/dmpo/.ssh/config";
    };
    id_rsa = {
      group = config.users.users.dmpo.group;
      owner = config.users.users.dmpo.name;
      mode = "0400";
      path = "/home/dmpo/.ssh/id_rsa";
    };
    ed25519 = {
      group = config.users.users.dmpo.group;
      owner = config.users.users.dmpo.name;
      mode = "0400";
      path = "/home/dmpo/.ssh/id_ed25519";
    };
    ed25519_pub = {
      group = config.users.users.dmpo.group;
      owner = config.users.users.dmpo.name;
      mode = "0400";
      path = "/home/dmpo/.ssh/id_ed25519.pub";
    };
    syncthing_cert = {
      path = "/home/dmpo/.config/syncthing/cert.pem";
    };
    syncthing_key = {
      path = "/home/dmpo/.config/syncthing/key.pem";
    };
    syncthing_user = { };
    syncthing_pass = { };
  };

  systemd.tmpfiles.rules = [
    "f ${config.sops.age.keyFile} 0640 root root"
  ];
}
