return {
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		keys = "<leader>t",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("nvim-tree").setup({
				view = {
					side = "right",
				},
			})
			vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeFindFileToggle<cr>")
		end,
	},
	{
		"stevearc/oil.nvim",
		keys = "-",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("oil").setup()
			vim.keymap.set("n", "-", "<cmd>Oil --float<cr>")
		end,
	},
	{
		"akinsho/bufferline.nvim",
		version = "*",
		event = "UIEnter",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = true,
	},
}
