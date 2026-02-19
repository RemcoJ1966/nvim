-- Blink is a completion plugin
return {
    "saghen/blink.cmp",
    dependencies = { "rafamadriz/friendly-snippets" },
    version = '1.*',
    opts = {
        keymap = {
            preset = 'default',
            ['<CR>'] = { 'accept', 'fallback' },
            ['<TAB>'] = { 'accept', 'fallback' },
            ['<C-k>'] = { 'show_signature', 'hide_signature', 'fallback' },
            ['<C-u>'] = { 'scroll_signature_up', 'fallback' },
            ['<C-d>'] = { 'scroll_signature_down', 'fallback' },
        },
        appearance = { nerd_font_variant = 'mono' },
        completion = {
            keyword = { range = 'prefix' }, -- 'full' or 'prefix'
            trigger = { show_on_trigger_character = true },
            accept = { auto_brackets = { enabled = false } },
            list = { selection = { preselect = false, auto_insert = false } },
            documentation = { auto_show = true, auto_show_delay_ms = 500 }
        },
        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
        },
        fuzzy = { implementation = "prefer_rust_with_warning" },
    },
    opts_extend = { "sources.default" },
}
