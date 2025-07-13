{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    inputs.hyprland.homeManagerModules.default
    ../../dotfiles/hypr/general.nix
    ../../dotfiles/hypr/binds.nix
    ../../dotfiles/hypr/rules.nix
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
