# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  # You can import other home-manager modules here
  imports = [
    ../dotfiles/cliphist/default.nix
    ../dotfiles/git/default.nix
    ../dotfiles/firefox/default.nix
    ../dotfiles/keepassxc/default.nix
    ../dotfiles/mako/default.nix
    ../dotfiles/ncspot/default.nix
    ../dotfiles/starship/default.nix
    ../dotfiles/swaylock/default.nix
    ../dotfiles/yazi/default.nix
    ../dotfiles/zathura/default.nix
    ../dotfiles/zsh/default.nix
    ../dotfiles/wofi/default.nix
  ];

  nixpkgs = {
    overlays = [
    ];
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };

  home = {
    username = "dmpo";
    homeDirectory = "/home/dmpo";
  };

  home.file = {
    ".config/hypr/hyprland.conf".source = ../dotfiles/hypr/hyprland.conf;
    # ".config/kitty".source = ../dotfiles/kitty;
    ".config/waybar".source = ../dotfiles/waybar;
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;

  systemd.user.startServices = "sd-switch";

  home.stateVersion = "25.05";
}
