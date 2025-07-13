{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    btop
    chatblade
    croc
    dig
    eza
    fd
    ffmpeg
    fzf
    git
    home-manager
    htop
    kitty
    neovim
    p7zip
    ripgrep
    wget
    yt-dlp
  ];
}
