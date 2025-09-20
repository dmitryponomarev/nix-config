{ lib, config, ... } : {

  opts = {
    # listchars = "tab:▸·,extends:⇉,precedes:⇇,nbsp:·,eol:↵,trail:␣";
    autoindent = true;
    backspace = "indent,eol,start";
    backup = false;
    breakindent = true;
    clipboard = "unnamedplus";
    colorcolumn = "100";
    completeopt = "menu,menuone,preview,noinsert,noselect";
    copyindent = true;
    cursorcolumn = true;
    cursorline = true;
    encoding = "utf8";
    expandtab = true;
    fileencoding = "utf-8";
    hidden = true;
    history = 200;
    hlsearch = true;
    ignorecase = true;
    incsearch = true;
    joinspaces = false;
    laststatus = 3;
    lazyredraw = false;
    list = true;
    number = true;
    relativenumber = true;
    scrolloff = 4;
    shiftround = true;
    shiftwidth = 2;
    showmatch = true;
    signcolumn = "yes";
    smartcase = true;
    smartindent = true;
    smarttab = true;
    softtabstop = 0;
    splitbelow = true;
    splitright = true;
    swapfile = false;
    tabstop = 2;
    termguicolors = true;
    textwidth = 0;
    undofile = true;
    wrap = false;
  };
}
