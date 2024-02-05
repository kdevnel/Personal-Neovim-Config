-- catppuccin theme
return {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
        -- setup catppuccin theme
        -- alternative schemes:
        -- catppuccin-latte
        -- catppuccin-frappe
        -- see repo for more
        vim.cmd.colorscheme "catppuccin"
    end
}
