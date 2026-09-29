local opt = vim.opt

-- Display
opt.number = true
opt.cursorline = true
opt.showmatch = true
opt.ruler = true
opt.list = true
opt.listchars = {
  tab = "»-",
  trail = ".",
  extends = "»",
  precedes = "«",
  nbsp = "%",
}

-- Indent
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 0
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.wrapscan = true
opt.hlsearch = true

-- Command line / history
opt.wildmenu = true
opt.history = 5000

-- UI
opt.laststatus = 2
opt.signcolumn = "yes"

-- Better split behavior
opt.splitright = true
opt.splitbelow = true

-- More pleasant editing defaults
opt.mouse = "a"
opt.undofile = true
opt.updatetime = 250
opt.timeoutlen = 400

-- Neovim always uses UTF-8 internally, so `encoding` does not need to be set.
-- regexpengine=0 is already the default and is kept implicit.
