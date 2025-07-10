{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    grim
    slurp
    swappy
    waybar
    wf-recorder
    wl-clipboard
  ];
}
