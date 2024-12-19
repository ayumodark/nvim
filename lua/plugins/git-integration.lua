return {
	{
		"NeogitOrg/neogit",
		keys = "<leader>g",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",
		},
		config = function()
			require("neogit").setup()
			vim.keymap.set("n", "<leader>g", "<cmd>Neogit cwd=%:p:h kind=floating<cr>")
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		event = "VeryLazy",
		config = true,
	},
}
