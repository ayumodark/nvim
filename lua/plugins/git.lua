return {
  {
    "lewis6991/gitsigns.nvim",
  },
  {
    "echasnovski/mini.git",
    opts = function()
      vim.keymap.set("n", "<leader>ga", ":Git add .<cr>")
      vim.keymap.set("n", "<leader>gc", ":Git commit<cr>")
      vim.keymap.set("n", "<leader>gp", ":Git push<cr>")
    end,
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",         
      "sindrets/diffview.nvim",
      "echasnovski/mini.pick",
    },
    config = true
    opts = function(),
      vim.keymap.set("n", "<leader>gb", ":Neogit cwd=%:p:h kind=floating<cr>")
    end,
  },
}
