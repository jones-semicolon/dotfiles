local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true         -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 4       -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2    -- 2 spaces for indent width
opt.expandtab = true  -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one
opt.scrolloff = 12
opt.numberwidth = 3

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true  -- if you include mixed case in your search, assumes you want case-sensitive
opt.smarttab = true
opt.smartindent = true

-- cursor line
opt.cursorline = true -- highlight the current cursor line

opt.termguicolors = true
opt.background = "dark"   -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "number" -- show sign column so that text doesn't shift

-- split windows
opt.splitbelow = true -- split horizontal window to the bottom

opt.swapfile = false
opt.backup = false
opt.modeline = false
opt.showmode = false
-- Enable manual folding
