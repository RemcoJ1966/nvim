return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        local treesitter = require("nvim-treesitter")
        treesitter.setup {
            indent = { enable = true },
            sync_install = false,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        }
        treesitter.install {
            "lua",
            "rust",
            "c",
            "cpp",
            "c_sharp",
            "gitcommit",
            "gitignore",
            "html",
            "css",
            "markdown",
            "bash",
            "ssh_config",
            "xml",
            "yaml",
            "json",
        }
    end,
}
