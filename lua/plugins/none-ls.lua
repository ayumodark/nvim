return {
  "nvimtools/none-ls.nvim",
  keys = "<leader>r",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
      },
    })
    vim.keymap.set("n", "<leader>r", "<cmd>lua vim.lsp.buf.format()<cr>")
    vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>")
    vim.keymap.set("n", "<leader>h", "<cmd>lua vim.lsp.buf.hover()<cr>")
  end,
}
