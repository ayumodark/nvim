return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").lua_ls.setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
      ensure_installed = { "lua_ls", "stylua" }
      automatic_installation = true,
    })
    end,
  },
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        }
      }
    })
    end,
  },
}
