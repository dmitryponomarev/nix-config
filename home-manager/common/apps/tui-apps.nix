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
    cmake-format
    deadnix
    difftastic
    dos2unix
    htmlhint
    google-java-format
    lshw
    markdownlint-cli
    mypy
    prettier
    prettierd
    pulsemixer
    scanmem
    shellcheck
    stylua
    ruff
    terraform
    terraform-ls
    tmux
    unzip
    yamlfmt
    yamllint
  ];
}
