return {
  {
    "lewis6991/gitsigns.nvim",
    lazy = true,
    event = "InsertEnter",
    opts = {},
  },
  {
    "echasnovski/mini-git",
    lazy = true,
    keys = {
      "<leader>ga", ":Git add .<cr>",
      "<leader>gc", ":Git commit<cr>",
      "<leader>gp", ":Git push<cr>",
    },
    config = function()
      require("mini.git").setup()
      vim.keymap.set("n", "<leader>ga", ":Git add .<cr>")
      vim.keymap.set("n", "<leader>gc", ":Git commit<cr>")
      vim.keymap.set("n", "<leader>gp", ":Git push<cr>")
    end,
  },
  {
    "NeogitOrg/neogit",
    lazy = true,
    keys = {"<leader>gb", ":Neogit cwd=%:p:h kind=floating<cr>"},
    dependencies = {
      "nvim-lua/plenary.nvim", lazy = true,
      "sindrets/diffview.nvim", lazy = true,
    },
    config = function()
      require("neogit").setup()
      vim.keymap.set("n", "<leader>gb", ":Neogit cwd=%:p:h kind=floating<cr>")
    end,
  },
}
