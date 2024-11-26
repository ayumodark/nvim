return {
  {
    "neovim/nvim-lspconfig",
    opts = function()
      require("lspconfig").lua_ls.setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function()
      ensure_installed = { "lua_language_server" }
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = function()
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        }
      }
    end,
  },
}
