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
    checkstyle
    cmake-format
    deadnix
    difftastic
    dos2unix
    google-java-format
    gcc
    htmlhint
    jdk21
    jdt-language-server
    lshw
    markdownlint-cli
    mypy
    prettier
    prettierd
    pulsemixer
    ruff
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
