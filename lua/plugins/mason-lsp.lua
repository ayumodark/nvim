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
			automatic_installation = true,
			ensure_installed = {
				"lua_ls",
			},
		},
	},
	{
		"jay-babu/mason-null-ls.nvim",
		event = "VeryLazy",
		opts = {
			automatic_installation = true,
			ensure_installed = {
				"stylua",
			},
		},
	},
}
