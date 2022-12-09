local g = vim.g
local o = vim.o

-- Set colors
o.termguicolors = true

-- Decrease update time
o.timeoutlen = 100
o.updatetime = 200

-- Number of lines to keep above and below the cursor
o.scroloff = 8

-- Better UI
o.number = true
o.numberwidth = 5
o.relativenumber = true
-- o.signcolumn = 'yes:2'
o.cursorline = true

-- Better editing experience
o.expandtab = true
-- o.smarttab = true
o.cindent = true
-- o.autoindent = true
o.wrap = true
o.textwidth = 300
o.tabstop = 4
o.shiftwidth = 0
o.softtabstop = -1 -- If negative, shiftwidth value is used
o.list = true
o.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'

-- Use OS clipboard
o.clipboard = 'unnamedplus'

-- Case insensitive searching
o.ignorecase = true
o.smartcase = true

-- Undo and backup options
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false

-- Remember 50 item in commandline history
o.history = 50

-- Better buffer splitting
o.splitright = true
o.splitbelow = true

-- Preserve view while jumping
o.jumpoptions = 'view'

-- Stable buffer content on window open/close events
o.splitkeep = 'screen'

-- Improve diff
vim.opt.diffopt:append('linematch:60')

-- Map <leader> to space
g.mapleader = ' '
g.maplocalleader = ' '
