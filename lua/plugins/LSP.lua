return {
  {
    "neovim/nvim-lspconfig",
  }
  {
    "williamboman/mason-lspconfig.nvim",
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