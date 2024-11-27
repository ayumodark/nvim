return {
  {
    "echasnovski/mini.pick",
    config = function()
      require("mini.pick").setup()
      vim.keymap.set("n", "<leader>p", ":Pick files<cr>")
    end,
  },
  {
    "echasnovski/mini.files",
    config = function()
      require("mini.files").setup()
      vim.keymap.set("n", "<leader>f", ":lua MiniFiles.open()<cr>")
    end,
  },
  {
    "echasnovski/mini.pairs",
    opts = {},
  },
}
