return {
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({
                suggestion = {
                    auto_trigger = true,
                    debounce = 300,
                },
                filetypes = {
                    javascript = true,
                    typescript = true,
                    php = true,
                    css = true,
                    scss = true,
                },
            })
        end,
    },
}
