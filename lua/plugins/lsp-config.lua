return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"tsserver",
					"phpactor",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})
			lspconfig.intelephense.setup({
				capabilities = capabilities,
				settings = {
					intelephense = {
						stubs = {
							"bcmath",
							"bz2",
							"Core",
							"curl",
							"date",
							"dom",
							"fileinfo",
							"filter",
							"gd",
							"gettext",
							"hash",
							"iconv",
							"imap",
							"intl",
							"json",
							"libxml",
							"mbstring",
							"mcrypt",
							"mysql",
							"mysqli",
							"password",
							"pcntl",
							"pcre",
							"PDO",
							"pdo_mysql",
							"Phar",
							"readline",
							"regex",
							"session",
							"SimpleXML",
							"sockets",
							"sodium",
							"standard",
							"superglobals",
							"tokenizer",
							"xml",
							"xdebug",
							"xmlreader",
							"xmlwriter",
							"yaml",
							"zip",
							"zlib",
							"wordpress-stubs",
							"woocommerce-stubs",
							"acf-pro-stubs",
							"wordpress-globals",
							"wp-cli-stubs",
							"genesis-stubs",
							"polylang-stubs",
						},
						environment = {
							includePaths = "/home/kdevnela8c/.composer/vendor/php-stubs/", -- this line forces the composer path for the stubs in case inteliphense don't find it...
						},
						files = {
							maxSize = 5000000,
						},
					},
				},
			})
			lspconfig.phpactor.setup({
				capabilities = capabilities,
			})
			-- lspconfig.phpcs.setup({})
			-- lspconfig.phpcbf.setup({})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
