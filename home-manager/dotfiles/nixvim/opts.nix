{ lib, config, ... } : {

  opts = {
    breakindent = true;
    colorcolumn = "100";
    copyindent = true;
    cursorcolumn = true;
    cursorline = true;
    fileencoding = "utf-8";
    history = 200;
    lazyredraw = false;
    showmatch = true;
    splitbelow = true;
    splitright = true;
    textwidth = 0;
    undofile = true;
    # listchars = "tab:▸·,extends:⇉,precedes:⇇,nbsp:·,eol:↵,trail:␣";
    autoindent = true;
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
    number = true;
    relativenumber = true;
    scrolloff = 4;
    shiftround = true;
    shiftwidth = 2;
    signcolumn = "yes";
    smartcase = true;
    smartindent = true;
    smarttab = true;
    softtabstop = 0;
    swapfile = false;
    tabstop = 2;
    termguicolors = true;
    wrap = false;
  };
}
