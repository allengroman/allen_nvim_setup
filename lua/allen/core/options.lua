local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true
opt.number = true 

-- tabs and indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split window
opt.splitright = true
opt.splitbelow = true

-- clipboard
opt.clipboard:append("unnamedplus")

-- Key mappings for copy and paste using Ctrl+C and Ctrl+V
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Copy in normal mode
keymap('n', '<C-c>', '"+y', opts)

-- Paste in normal mode
keymap('n', '<C-v>', '"+p', opts)

-- Copy in visual mode (and then leave visual mode)
keymap('v', '<C-c>', '"+y:call nvim_input("<esc>")<CR>', opts)

-- Paste in insert mode
keymap('i', '<C-v>', '<C-r>+', opts)

-- Paste in command mode (useful for pasting in the ':' prompt)
keymap('c', '<C-v>', '<C-r>+', opts)


-- extra config
opt.iskeyword:append("-")
opt.splitright = true
opt.splitbelow = true

