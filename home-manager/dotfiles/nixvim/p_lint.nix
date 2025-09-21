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
      htmlhint = {
        cmd = lib.getExe pkgs.htmlhint;
      };
      jsonlint = {
        cmd = lib.getExe pkgs.nodePackages.jsonlint;
      };
      luacheck = {
        cmd = lib.getExe pkgs.luaPackages.luacheck;
      };
      markdownlint = {
        cmd = lib.getExe pkgs.markdownlint-cli;
      };
      yamllint = {
        cmd = lib.getExe pkgs.yamllint;
      };
    };

    lintersByFt = {
      html = ["htmlhint"];
      json = ["jsonlint"];
      yaml = ["yamllint"];
      lua = ["luacheck"];
      markdown = ["markdownlint"];
      python = ["mypy"];
      nix = ["deadnix"];
    };
  };
}
