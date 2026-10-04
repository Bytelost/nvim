-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true

-- Interface
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"

-- Keep some space around the cursor
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- Don't wrap long lines
vim.opt.wrap = false

-- Mouse support
vim.opt.mouse = "a"

-- System clipboard
vim.opt.clipboard = "unnamedplus"

-- Better split behavior
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Persistent undo
vim.opt.undofile = true

-- Faster updates
vim.opt.updatetime = 250

-- Key sequence timeout
vim.opt.timeoutlen = 300

-- Show command being typed
vim.opt.showcmd = true

-- Highlight matching brackets
vim.opt.showmatch = true
