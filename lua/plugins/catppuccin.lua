-- catppuccin theme
return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			integrations = {
				alpha = true,
				mason = true,
				neotree = true,
			},
		})
		-- setup catppuccin theme
		-- alternative schemes:
		-- catppuccin-latte
		-- catppuccin-frappe
		-- see repo for more
		vim.cmd.colorscheme("catppuccin-mocha")
	end,
}
