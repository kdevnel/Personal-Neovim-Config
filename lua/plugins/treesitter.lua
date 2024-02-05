return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        local config = require('nvim-treesitter.configs')
        config.setup({
            ensure_installed = {
                "lua",
                "javascript",
                "php",
                "css",
                "html",
                "typescript",
                "markdown",
                "markdown_inline",
                "scss"
            },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
