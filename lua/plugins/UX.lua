return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    lazy = true,
    keys = {"<leader>t", ":ToggleTerm direction=float<cr>"},
    config = function()
      require("toggleterm").setup()
      vim.keymap.set("n", "<leader>t", ":ToggleTerm direction=float<cr>")
    end,
  },
	{
		"windwp/nvim-autopairs",
		lazy = true,
		event = "InsertEnter",
		opts = {},
	},
	{
		"iamcco/markdown-preview.nvim",
		cmd = {"MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop"},
		build = "cd app && npm install",
		init = function()
			vim.g.mkdp_filetypes = {"markdown"}
		end,
		ft = {"markdown"},
	},
}
