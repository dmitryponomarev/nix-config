{ lib, config, ... } : {
  plugins = {

    # TELESCOPE



    # STATUS LINE
    lualine = {
      enable = true;
      settings = {
        options.theme = "gruvbox";
        sections.lualine_c = [
          {
            __raw = ''{ "filename", path = 1, file_status = true }'';
          }
        ];
      };
    };

    # BUFFER LINE

    bufferline = {
      enable = true;
    };

    # LINTING

    lint = {
      enable = true;
      lintersByFt = {
        bash = [ "shellcheck" ];
        c = [ "clangtidy" ];
        cmake = [ "cmakelint" ];
        cpp = [ "clangtidy" ];
        css = lib.mkIf (!config.plugins.lsp.servers.stylelint_lsp.enable) [ "stylelint" ];
        dockerfile = ["hadolint"];
        fish = [ "fish" ];
        gdscript = [ "gdlint" ];
        go = [ "golangcilint" ];
        html = [ "htmlhint" ];
        java = [ "checkstyle" ];
        javascript = lib.mkIf (!config.plugins.lsp.servers.biome.enable) [ "biomejs" ];
        json = [ "jsonlint" ];
        lua = [ "luacheck" ];
        make = [ "checkmake" ];
        markdown = [ "markdownlint" ];
        nix = [  "deadnix"  ];
        rust = [ "clippy" ];
        sh = [ "shellcheck" ];
        sql = [ "sqlfluff" ];
        swift = [ "swiftlint" ];
        terraform = ["tflint"];
        text = ["vale"];
        typescript = lib.mkIf (!config.plugins.lsp.servers.biome.enable) [ "biomejs" ];
        yaml = [ "yamllint" ];
      };
      # linters = {
      #   checkmake.cmd = lib.getExe pkgs.checkmake;
      #   checkstyle.cmd = lib.getExe pkgs.checkstyle;
      #   clangtidy.cmd = lib.getExe' pkgs.clang-tools "clang-tidy";
      #   clippy.cmd = lib.getExe pkgs.rust-analyzer;
      #   cmakelint.cmd = lib.getExe' pkgs.cmake-format "cmake-lint";
      #   gdlint.cmd = lib.getExe' pkgs.gdtoolkit_4 "gdlint";
      #   golangcilint.cmd = lib.getExe pkgs.golangci-lint;
      #   htmlhint.cmd = lib.getExe pkgs.htmlhint;
      #   jsonlint.cmd = lib.getExe pkgs.nodePackages.jsonlint;
      #   luacheck.cmd = lib.getExe pkgs.luaPackages.luacheck;
      #   markdownlint.cmd = lib.getExe pkgs.markdownlint-cli;
      #   nix.cmd = lib.getExe' pkgs.nix "nix-instantiate";
      #   pylint.cmd = lib.getExe pkgs.pylint;
      #   shellcheck.cmd = lib.getExe pkgs.shellcheck;
      #   sqlfluff.cmd = lib.getExe pkgs.sqlfluff;
      #   statix.cmd = lib.getExe pkgs.statix;
      #   stylelint.cmd = lib.getExe pkgs.stylelint;
      #   yamllint.cmd = lib.getExe pkgs.yamllint;
      # };
    };

    # AUTOCOMPLETION


    # OTHER

    indent-blankline = {
      enable = true;
    };

    web-devicons = {
      enable = true;
    };

    oil = {
      enable = true;
    };

    neoscroll = {
      enable = true;
    };

    treesitter = {
      enable = true;
    };

    nvim-autopairs = {
      enable = true;
    };

    trim = {
      enable = true;
      settings = {
        highlight = true;
        trim_on_write = false;
        ft_blocklist = [
          "checkhealth"
          "floaterm"
          "lspinfo"
          "neo-tree"
          "TelescopePrompt"
        ];
      };
    };

    mini = {
      enable = true;
      modules = {
        indentscope = {
          symbol = "│";
          options = {
            try_as_border = true;
          };
        };
         surround = { };
       };
    };
  };
}
