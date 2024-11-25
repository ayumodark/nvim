return {
  {
    "echasnovski/mini.pick",
    opts = function()
      vim.keymap.set("n", "<leader>p", ":Pick files<cr>")
    end,
  },
  {
    "echasnovski/mini.files",
    opts = function()
       vim.keymap.set("n", "<leader>f", ":lua MiniFiles.open()<cr>")
    end,
  },
  {
    "echasnovski/mini.pairs",
  },
}
