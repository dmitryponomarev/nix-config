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
    ./dotfiles/cliphist/default.nix
    ./dotfiles/git/default.nix
    ./dotfiles/keepassxc/default.nix
    ./dotfiles/mako/default.nix
    ./dotfiles/ncspot/default.nix
    ./dotfiles/starship/default.nix
    ./dotfiles/swaylock/default.nix
    ./dotfiles/yazi/default.nix
    ./dotfiles/zathura/default.nix
    ./dotfiles/zsh/default.nix
    ./dotfiles/wofi/default.nix
  ];

  nixpkgs = {
    overlays = [
    ];
    # Configure your nixpkgs instance
    config = {
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = _: true;
    };
  };

  home = {
    username = "dmpo";
    homeDirectory = "/home/dmpo";
  };

  home.file = {
    ".config/hypr/hyprland.conf".source = ./dotfiles/hypr/hyprland.conf;
    ".config/kitty".source = ./dotfiles/kitty;
    ".config/waybar".source = ./dotfiles/waybar;
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Add stuff for your user as you see fit:
  # programs.neovim.enable = true;
  home.packages = with pkgs; [
    firefox
    mpv
    inputs.nixvim.packages.x86_64-linux.default
  ];

  # Enable home-manager and git
  programs.home-manager.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "25.05";
}
