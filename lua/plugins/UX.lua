return {
  {
    "echasnovski/mini.pick",
    lazy = true,
    keys = {"<leader>p", ":Pick files<cr>", desc = "Pick"},
    config = function()
      require("mini.pick").setup()
      vim.keymap.set("n", "<leader>p", ":Pick files<cr>")
    end,
  },
  {
    "echasnovski/mini.files",
    lazy = true,
    keys = {"<leader>f", ":lua MiniFiles.open()<cr>", desc = "Files"},
    config = function()
      require("mini.files").setup()
      vim.keymap.set("n", "<leader>f", ":lua MiniFiles.open()<cr>")
    end,
  },
  {
    "echasnovski/mini.pairs",
    lazy = true,
    event = {'InsertEnter'},
    opts = {},
  },
}
