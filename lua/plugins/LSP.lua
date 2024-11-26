return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").lua_ls.setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function()
      ensure_installed = { "lua_ls" },
      automatic_installation = true,
      
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
