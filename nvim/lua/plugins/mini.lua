return 	{
  "echasnovski/mini.nvim",
  version = "*",
  config = function()
    require("mini.files").setup()
    require("mini.pairs").setup()
    require("mini.tabline").setup()
    require("mini.git").setup()

    vim.keymap.set("n", "<leader>fr", ":lua MiniFiles.open()<CR>")
    vim.keymap.set("n", "<leader>fc", ":lua MiniFiles.close()<CR>")

    vim.keymap.set("n", "<leader>g", ":Git")
  end,
}
