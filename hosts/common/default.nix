{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./fonts.nix
      ./network.nix
      ./nix-settings.nix
      ./packages.nix
      ./programs.nix
      ./services.nix
      ./sound.nix
      ./time_and_locale.nix
      ./user.nix
      ./variables.nix
    ];

  system.stateVersion = "25.05";

}

