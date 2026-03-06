vim.cmd('runtime! ftplugin/rust.vim')
vim.treesitter.start()
vim.lsp.enable('rust_analyzer')
