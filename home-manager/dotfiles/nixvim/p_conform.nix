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
        # c = ["clang-format"];
        # cpp = ["clang-format"];
        # h = ["clang-format"];
        # hpp = ["clang-format"];
        bash = ["shellcheck"];
        docker = ["hadolint"];
        cmake = ["cmake-format"];
        css = ["prettierd"];
        html = ["prettierd"];
        # groovy = ["prettier"];
        # gradle = ["prettier"];
        java = ["google-java-format"];
        javascript = ["prettierd"];
        lua = ["stylua"];
        nix = ["alejandra"];
        sh = ["shellcheck"];
        terraform = ["terraform_fmt"];
        typescript = ["prettierd"];
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
        shellcheck = {
          command = lib.getExe pkgs.shellcheck;
        };
        prettier = {
          command = lib.getExe pkgs.prettier;
        };
        prettierd = {
          command = lib.getExe pkgs.prettierd;
        };
        stylua = {
          command = lib.getExe pkgs.stylua;
        };
        # clang-format = {
        #   command = lib.getExe pkgs.clang-format;
        # };
        cmake-format = {
          command = lib.getExe pkgs.cmake-format;
        };
        yamlfmt = {
          command = lib.getExe pkgs.yamlfmt;
        };
        # npm_groovy_lint = {
        #   command = lib.getExe pkgs.npm-groovy-lint;
        #   stdin = false;
        #   args = [
        #     "--fix"
        #     "--nolintafter"
        #     "--failon"
        #     "none"
        #     "$FILENAME"
        #   ];
        # };
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
