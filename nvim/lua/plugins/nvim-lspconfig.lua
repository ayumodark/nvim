return {
  "neovim/nvim-lspconfig",
  config = function()
    require("lspconfig").pyright.setup()
    require("lspconfig").bashls.setup()
    require("lspconfig").luals.setup()
  end,
}
