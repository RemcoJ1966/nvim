-- Common options
local opts = {
    noremap = true, -- non recursive
    silent = true,  -- do not show message
}

-----------------------------------------------
--- Normal mode
-----------------------------------------------

-- Resize panes with arrows
-- delta: 2 lines / columns
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Toggle inlay hints
vim.lsp.inlay_hint.enable(true) -- enable inlay hints by default
vim.keymap.set("n", "<leader>h", function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
    vim.notify(vim.lsp.inlay_hint.is_enabled() and "Inlay Hints Enabled" or "Inlay Hints Disabled")
end)
