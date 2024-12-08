return {	
	{
		"williamboman/mason.nvim",
    lazy = true,
    event = "InsertEnter",
    dependencies = {
      "neovim/nvim-lspconfig",
      "williamboman/mason-lspconfig.nvim",
      "jay-babu/mason-null-ls.nvim",
    },
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
		end,
	},
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = true,
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "pyright", "cssls", "html", "ts_ls"},
        automatic_installation = true,
      })
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    lazy = true,
    config = function()
      require("mason-null-ls").setup({
        ensure_installed = {"stylua", "black", "prettierd"},
        automatic_installation = true,
      })
    end,
  },
}
