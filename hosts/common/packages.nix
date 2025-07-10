{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    btop
    croc
    fzf
    git
    home-manager
    htop
    kitty
    neovim
    wget
  ];
}
