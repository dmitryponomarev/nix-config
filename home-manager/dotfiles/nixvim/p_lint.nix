{
  lib,
  pkgs,
  ...
}: {
  plugins.lint = {
    enable = true;

    linters = {
      mypy = {
        cmd = lib.getExe pkgs.mypy;
      };
      deadnix = {
        cmd = lib.getExe pkgs.deadnix;
      };
      eslint_d = {
        cmd = lib.getExe pkgs.eslint_d;
      };
      htmlhint = {
        cmd = lib.getExe pkgs.htmlhint;
      };
      jsonlint = {
        cmd = lib.getExe pkgs.nodePackages.jsonlint;
      };
      checkstyle = {
        cmd = lib.getExe pkgs.checkstyle;
      };
      luacheck = {
        cmd = lib.getExe pkgs.luaPackages.luacheck;
      };
      markdownlint = {
        cmd = lib.getExe pkgs.markdownlint-cli;
      };
      shellcheck = {
        cmd = lib.getExe pkgs.shellcheck;
      };
      yamllint = {
        cmd = lib.getExe pkgs.yamllint;
      };
    };

    lintersByFt = {
      css = ["eslint_d"];
      dockerfile = ["hadolint"];
      html = ["htmlhint"];
      java = ["checkstyle"];
      javascript = ["eslint_d"];
      json = ["jsonlint"];
      lua = ["luacheck"];
      markdown = ["markdownlint"];
      sh = ["shellcheck"];
      nix = ["deadnix"];
      python = ["mypy"];
      yaml = ["yamllint"];
    };
  };
}
