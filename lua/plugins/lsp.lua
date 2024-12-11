return {
	{
		"williamboman/mason.nvim",
		event = "UIEnter",
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		event = "VeryLazy",
	},
	{
		"williamboman/mason-lspconfig.nvim",
		event = "VeryLazy",
		opts = {
			ensure_installed = { "lua_ls", "pyright", "cssls", "html", "ts_ls" },
			automatic_installation = true,
		},
	},
	{
		"jay-babu/mason-null-ls.nvim",
		event = "VeryLazy",
		opts = {
			ensure_installed = { "stylua", "black", "prettierd" },
			automatic_installation = true,
		},
	},
}
