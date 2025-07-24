{
  config,
  lib,
  pkgs,
  ...
}:

{
  sops.defaultSopsFile = ../../secrets.yaml;
  sops.age.keyFile = "/home/dmpo/.config/sops/age/keys.txt";
  sops.secrets = {
    ssh_config = {
      group = "users";
      owner = "dmpo";
      path = "/home/dmpo/.ssh/config";
      mode = "0600";
    };
    id_rsa = {
      group = "users";
      owner = "dmpo";
      mode = "0400";
      path = "/home/dmpo/.ssh/id_rsa";
    };
    ed25519 = {
      group = "users";
      owner = "dmpo";
      mode = "0400";
      path = "/home/dmpo/.ssh/id_ed25519";
    };
    ed25519_pub = {
      group = "users";
      owner = "dmpo";
      mode = "0400";
      path = "/home/dmpo/.ssh/id_ed25519.pub";
    };
  };
}
