{
  inputs,
  lib,
  config,
  pkgs,
  ...
}:
{
  imports = [
    inputs.nixvim.homeModules.nixvim
  ];

  home.packages = with pkgs; [
    azure-cli
    lshw
    pulsemixer
    dos2unix
    difftastic
    tmux
    unzip
    scanmem
  ];

}
