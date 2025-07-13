{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    inputs.hyprland.homeManagerModules.default
    ../../dotfiles/general.nix
    ../../dotfiles/binds.nix
    ../../dotfiles/rules.nix
  ];
  home.packages = with pkgs; [
    grim
    networkmanagerapplet
    slurp
    swappy
    waybar
    wf-recorder
    wl-clipboard
  ];
}
