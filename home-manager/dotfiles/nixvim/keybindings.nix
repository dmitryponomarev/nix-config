{
  globals.mapleader = " ";

  keymaps = [
    {
      mode = "n";
      key = "<A-j>";
      action = "<cmd>m .+1<cr>==";
      options = {
        desc = "Move Down";
      };
    }
    {
      mode = "n";
      key = "<A-k>";
      action = "<cmd>m .-2<cr>==";
      options = {
        desc = "Move Up";
      };
    }
    {
      mode = "i";
      key = "<A-j>";
      action = "<esc><cmd>m .+1<cr>==gi";
      options = {
        desc = "Move Down";
      };
    }
    {
      mode = "i";
      key = "<A-k>";
      action = "<esc><cmd>m .-2<cr>==gi";
      options = {
        desc = "Move Up";
      };
    }
    {
      mode = "v";
      key = "<A-j>";
      action = ":m '>+1<cr>gv=gv";
      options = {
        desc = "Move Down";
      };
    }
    {
      mode = "v";
      key = "<A-k>";
      action = ":m '<-2<cr>gv=gv";
      options = {
        desc = "Move Up";
      };
    }
    {
      mode = [
        "i"
        "x"
        "n"
        "s"
      ];
      key = "<leader>w";
      action = "<cmd>w<cr><esc>";
      options = {
        desc = "Save File";
      };
    }
    {
      mode = [
        "i"
        "n"
      ];
      key = "<esc>";
      action = "<cmd>noh<cr><esc>";
      options = {
        desc = "Escape and Clear hlsearch";
      };
    }
    {
      mode = "n";
      key = "<leader>q";
      action = "<cmd>q<cr>";
      options = {
        desc = "Quit";
      };
    }
    {
      mode = "n";
      key = "<leader>t";
      action = "<cmd>Trim<cr><esc>";
      options = {
        desc = "Trim trailing";
      };
    }
  ];
}
