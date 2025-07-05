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
    ./dotfiles/nixvim/default.nix
    ./dotfiles/ncspot/default.nix
    ./dotfiles/starship/default.nix
    ./dotfiles/swaylock/default.nix
    ./dotfiles/yazi/default.nix
    ./dotfiles/zathura/default.nix
    ./dotfiles/zsh/default.nix
    ./dotfiles/wofi/default.nix

    # If you want to use home-manager modules from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModule

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
  ];

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # If you want to use overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
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
    kitty
    mpv
    hyprlock
    hyprpicker
    waybar
    neovim
    wl-clipboard
    grim
    slurp
    swappy
    wf-recorder
    libnotify
  ];

  # Enable home-manager and git
  programs.home-manager.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "25.05";
}
