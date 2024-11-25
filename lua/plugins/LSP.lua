return {
  {
    "neovim/nvim-lspconfig",
    opts = {},
  }
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {}
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        }
      }
    },
  },
}
