{ lib, config, ... } : {

  opts = {
    autoindent = false;
    backspace = "indent,eol,start";
    backup = false;
    clipboard = "unnamedplus";
    completeopt = "menu,menuone,preview,noinsert,noselect";
    encoding = "utf8";
    hidden = true;
    hlsearch = true;
    ignorecase = true;
    incsearch = true;
    joinspaces = false;
    laststatus = 3;
    list = true;
    # listchars = "tab:▸·,extends:⇉,precedes:⇇,nbsp:·,eol:↵,trail:␣";
    number = true;
    relativenumber = true;
    scrolloff = 4;
    shiftround = true;
    shiftwidth = 4;
    signcolumn = "yes";
    smartcase = true;
    smartindent = true;
    smarttab = true;
    softtabstop = 4;
    swapfile = false;
    tabstop = 4;
    termguicolors = true;
    wrap = false;
  };
}
