{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    btop
    chatblade
    croc
    eza
    fzf
    git
    home-manager
    htop
    kitty
    neovim
    ripgrep
    wget
  ];
}
