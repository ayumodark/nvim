return 	{
  "echasnovski/mini.nvim",
  version = "*",
  config = function()
    require("mini.files").setup()
    require("mini.pairs").setup()
    require("mini.tabline").setup()
    require("mini.git").setup()

    vim.keymap.set("n", "<leader>fr", ":lua MiniFiles.open()<CR>")

    vim.keymap.set("n", "<leader>ga", ":Git add .<CR>")
    vim.keymap.set("n", "<leader>gc", ":Git commit<CR>")
    vim.keymap.set("n", "<leader>gp", ":Git push<CR>")
  end,
}
