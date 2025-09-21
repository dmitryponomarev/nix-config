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
    ../dotfiles/eza/default.nix
    ../dotfiles/git/default.nix
    ../dotfiles/kitty/default.nix
    ../dotfiles/nixvim/default.nix
    ../dotfiles/nix-colors/default.nix
    ../dotfiles/starship/default.nix
    ../dotfiles/yazi/default.nix
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

  home.sessionVariables = {
    EDITOR = "nvim";
    TERMINAL = "kitty";
  };

  programs.home-manager.enable = true;

  systemd.user.startServices = "sd-switch";

  home.stateVersion = "25.05";
}
