return {
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		keys = { "<leader>f", "<cmd>NvimTreeToggle<cr>" },
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("nvim-tree").setup({
				view = {
					side = "right",
				},
			})
			vim.keymap.set("n", "<leader>f", "<cmd>NvimTreeToggle<cr>")
		end,
	},
	{
		"stevearc/oil.nvim",
		keys = { "-", "<cmd>Oil --float<cr>" },
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("oil").setup()
			vim.keymap.set("n", "-", "<cmd>Oil --float<cr>")
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
}
