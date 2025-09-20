{ lib, config, ... } : {

  plugins.telescope = {
    enable = true;
    extensions = {
      file-browser = {
        enable = true;
      };
      fzf-native = {
        enable = true;
      };
    };
    settings = {
      defaults = {
        layout_config = {
          horizontal = {
            prompt_position = "top";
          };
        };
        sorting_strategy = "ascending";
        mappings = {
          i = {
            "<C-j>" = "move_selection_next";
            "<C-k>" = "move_selection_previous";
           };
        };
      };
    };
    keymaps = {
      "<leader><space>" = {
        action = "find_files";
        options = {
          desc = "Find project files";
        };
      };
      "<leader>F" = {
        action = "live_grep";
        options = {
          desc = "Grep (root dir)";
        };
      };
      "<leader>fr" = {
        action = "oldfiles";
        options = {
          desc = "Recent";
        };
      };
      "<leader>fc" = {
        action = "grep_string";
        options = {
          desc = "Search under cursor";
        };
      };
      "<leader>fb" = {
        action = "buffers";
        options = {
          desc = "Buffers";
        };
      };
      "<leader>gc" = {
        action = "git_commits";
        options = {
          desc = "Commits";
        };
      };
      "<leader>ff" = {
        action = "current_buffer_fuzzy_find";
        options = {
          desc = "Buffer";
        };
      };
      "<leader>fk" = {
        action = "keymaps";
        options = {
          desc = "Keymaps";
        };
      };
    };
  };
}
