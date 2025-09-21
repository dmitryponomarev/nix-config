{ lib, config, ... } : {
  plugins = {
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
  };
}
