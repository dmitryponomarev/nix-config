{
  lib,
  pkgs,
  ...
}: {
  plugins.conform-nvim = {
    enable = true;

    settings = {
      notify_on_error = true;
      format_on_save = {
        lsp_format = "fallback";
      };
      formatters_by_ft = {
        nix = ["alejandra"];
        lua = ["stylua"];
        javascript = ["prettierd"];
        yaml = ["yamlfmt"];
        "_" = [
          "squeeze_blanks"
          "trim_whitespace"
          "trim_newlines"
        ];
      };
      formatters = {
        alejandra = {
          command = lib.getExe pkgs.alejandra;
        };
        prettierd = {
          command = lib.getExe pkgs.prettierd;
        };
        stylua = {
          command = lib.getExe pkgs.stylua;
        };
        yamlfmt = {
          command = lib.getExe pkgs.yamlfmt;
        };
      };
    };
  };

  keymaps = [
    {
      mode = ["n"];
      key = "<leader>cf";
      action = "<cmd>lua require('conform').format()<cr>";
      options = {
        silent = true;
        desc = "Format Buffer";
      };
    }
  ];
}
