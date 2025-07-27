{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    ./fonts.nix
    ./network.nix
    ./nix-settings.nix
    ./packages.nix
    ./programs.nix
    ./services.nix
    ./sound.nix
    ./sops.nix
    ./time_and_locale.nix
    ./user.nix
    ./environment.nix
    ./virtualisation.nix
  ];

  system.stateVersion = "25.05";

}
