return {
  {
    "echasnovski/mini.pick",
    lazy = true,
    config = function()
      require("mini.pick").setup()
      vim.keymap.set("n", "<leader>p", ":Pick files<cr>")
    end,
  },
  {
    "echasnovski/mini.files",
    lazy = true,
    config = function()
      require("mini.files").setup()
      vim.keymap.set("n", "<leader>f", ":lua MiniFiles.open()<cr>")
    end,
  },
  {
    "echasnovski/mini.pairs",
    lazy = true,
    opts = {},
  },
}
