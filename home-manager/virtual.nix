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
    ./dotfiles/git/default.nix
    ./dotfiles/starship/default.nix
    ./dotfiles/yazi/default.nix
    ./dotfiles/zsh/default.nix
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
    ".config/kitty".source = ./dotfiles/kitty;
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Add stuff for your user as you see fit:
  # programs.neovim.enable = true;
  home.packages = with pkgs; [
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
