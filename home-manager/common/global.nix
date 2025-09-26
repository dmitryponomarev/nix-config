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
    ../dotfiles/chromium/default.nix
    ../dotfiles/eza/default.nix
    ../dotfiles/firefox/default.nix
    ../dotfiles/git/default.nix
    ../dotfiles/keepassxc/default.nix
    ../dotfiles/kitty/default.nix
    ../dotfiles/mako/default.nix
    ../dotfiles/ncspot/default.nix
    ../dotfiles/nix-colors/default.nix
    ../dotfiles/nixvim/default.nix
    ../dotfiles/obsidian/default.nix
    ../dotfiles/starship/default.nix
    ../dotfiles/swappy/default.nix
    ../dotfiles/swaylock/default.nix
    ../dotfiles/waybar/default.nix
    ../dotfiles/wofi/default.nix
    ../dotfiles/yazi/default.nix
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

  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "default-web-browser" = [ "firefox.desktop" ];
      "text/html" = [ "firefox.desktop" ];
      "x-scheme-handler/http" = [ "firefox.desktop" ];
      "x-scheme-handler/https" = [ "firefox.desktop" ];
      "x-scheme-handler/about" = [ "firefox.desktop" ];
    };
  };

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
    XDG_SESSION_TYPE = "wayland";
    NIXOS_OZONE_WL = "1";
    MOZ_ENABLE_WAYLAND = "1";
  };

  programs.home-manager.enable = true;

  systemd.user.startServices = "sd-switch";

  home.stateVersion = "25.05";
}
