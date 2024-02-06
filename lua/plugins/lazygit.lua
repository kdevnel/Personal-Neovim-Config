-- Allows you to open lazygit (installed separately) inside NeoVim
return {
	"kdheepak/lazygit.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>")
		vim.keymap.set("n", "<leader>gc", ":LazyGitConfig<CR>")
	end,
}
