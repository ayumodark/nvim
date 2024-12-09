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
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = true,
    keys = {"<leader>f", ":NvimTreeToggle<cr>"},
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = function()
      require("nvim-tree").setup({
        view = {
          side = "right",
        },
      })
      vim.keymap.set("n", "<leader>f", ":NvimTreeToggle<cr>")
    end,
  },
  {
    "stevearc/oil.nvim",
    lazy = true,
    keys = {"-", ":Oil --float<cr>"},
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = function()
      require("oil").setup()
      vim.keymap.set("n", "-", ":Oil --float<cr>")
    end,
  },
	{
		"windwp/nvim-autopairs",
		lazy = true,
    event = {"InsertEnter"},
		opts = {},
	},
	{
		"iamcco/markdown-preview.nvim",
    lazy = true,
		cmd = {"MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop"},
		build = "cd app && npm install",
		init = function()
			vim.g.mkdp_filetypes = {"markdown"}
		end,
		ft = {"markdown"},
	},
}
