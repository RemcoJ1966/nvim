require("config.lazy")
require("config.keymaps")

-- LSP
vim.lsp.enable('lua_ls')
vim.lsp.enable('rust_analyzer')

-- Color scheme
vim.cmd.colorscheme('tokyonight-night')
