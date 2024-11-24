return {
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "pyright",
        "bashls",
        "lua_ls",
      },
    })
  end
}
