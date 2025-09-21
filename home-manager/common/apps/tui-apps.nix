{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    inputs.nixvim.homeModules.nixvim
  ];

  home.packages = with pkgs; [
    alejandra
    azure-cli
    deadnix
    difftastic
    dos2unix
    htmlhint
    lshw
    markdownlint-cli
    mypy
    prettierd
    pulsemixer
    scanmem
    stylua
    ruff
    tmux
    unzip
    yamlfmt
    yamllint
  ];
}
