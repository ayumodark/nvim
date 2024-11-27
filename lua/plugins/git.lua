return {
	{
		"lewis6991/gitsigns.nvim",
		opts = {},
	},
	{
		"echasnovski/mini-git",
    config = function()
      require("mini.git").setup()
      vim.keymap.set("n", "<leader>ga", ":Git add .<cr>")
      vim.keymap.set("n", "<leader>gc", ":Git commit<cr>")
      vim.keymap.set("n", "<leader>gp", ":Git push<cr>")
    end,
	},
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",
			"echasnovski/mini.pick",
		},
		config = function()
			require("neogit").setup()
			vim.keymap.set("n", "<leader>gb", ":Neogit cwd=%:p:h kind=floating<cr>")
		end,
	},
}
