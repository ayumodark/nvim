return {	
	{
		"williamboman/mason.nvim",
    lazy = true,
    cmd = "Mason",
    dependencies = {
      {"neovim/nvim-lspconfig", lazy = true},
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
    cmd = "Mason",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright", "cssls", "html", "ts_ls" },
        automatic_installation = true,
      })
    end,
  },
}
