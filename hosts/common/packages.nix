{
  config,
  lib,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    age
    btop
    chatblade
    croc
    chromium
    dig
    eza
    fd
    ffmpeg
    fzf
    git
    jq
    home-manager
    hyprpicker
    ouch
    htop
    kitty
    neovim
    neofetch
    nettools
    nodejs
    p7zip
    sops
    ripgrep
    wget
    # wlogout
    yaziPlugins.ouch
    yt-dlp
  ];
}
