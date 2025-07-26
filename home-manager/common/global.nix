# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}:
{
  # You can import other home-manager modules here
  imports = [
    ../dotfiles/cliphist/default.nix
    ../dotfiles/eza/default.nix
    ../dotfiles/firefox/default.nix
    ../dotfiles/git/default.nix
    ../dotfiles/keepassxc/default.nix
    ../dotfiles/kitty/default.nix
    ../dotfiles/mako/default.nix
    ../dotfiles/ncspot/default.nix
    ../dotfiles/nix-colors/default.nix
    ../dotfiles/starship/default.nix
    ../dotfiles/swaylock/default.nix
    ../dotfiles/wofi/default.nix
    ../dotfiles/yazi/default.nix
    ../dotfiles/waybar/default.nix
    ../dotfiles/zathura/default.nix
    ../dotfiles/zsh/default.nix
  ];

  nixpkgs = {
    overlays = [
    ];
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };

  xdg.userDirs.enable = false;

  home = {
    username = "dmpo";
    homeDirectory = "/home/dmpo";
    pointerCursor = {
      name = "Adwaita";
      package = pkgs.adwaita-icon-theme;
      size = 24;
      x11 = {
        enable = true;
        defaultCursor = "Adwaita";
      };
    };
  };

  home.file = {
    ".config/waybar/scripts".source = ../dotfiles/waybar/scripts;
  };

  home.sessionVariables = {
    EDITOR = "nvim";
    TERMINAL = "kitty";
  };

  programs.home-manager.enable = true;

  systemd.user.startServices = "sd-switch";

  home.stateVersion = "25.05";
}
