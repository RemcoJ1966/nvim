-- Tab
vim.opt.tabstop = 4         -- number of visual spaces per TAB
vim.opt.softtabstop = 4     -- number of spaces in a tab when editing
vim.opt.shiftwidth = 4      -- insert 4 spaces on a tab
vim.opt.expandtab = true    -- tabs are spaces

-- UI config
vim.opt.number = true               -- show line numbers
vim.opt.signcolumn = "yes"          -- show signs
vim.opt.relativenumber = true       -- relative line numbers
vim.opt.cursorline = true           -- highlight cursor line
vim.opt.splitbelow = true           -- open new vertical split bottom
vim.opt.splitright = true           -- open new horizontal split right
vim.opt.termguicolors = true        -- enable 24-bit color in the TUI
vim.opt.showmode = true             -- show mode

-- Completion Menu
vim.opt.completeopt = { 'menu', 'menuone', 'noselect', 'fuzzy', 'popup' }

-- Searching
vim.opt.incsearch = true        -- search as characters are entered
vim.opt.hlsearch = true         -- highlight matches
vim.opt.ignorecase = false      -- do not ignore case in searches by default
vim.opt.smartcase = true        -- make search case sensitive if search string contains an uppercase character

-- LSP
vim.lsp.config('*', {
    root_markers = { '.git' },  -- set default root markers for all clients
})
