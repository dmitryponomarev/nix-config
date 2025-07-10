{ config, lib, pkgs, ... }:

{
  users.users.dmpo = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "docker" ];
    shell = pkgs.zsh;
    packages = with pkgs; [ ];
  };
}
