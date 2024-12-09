return {
  {
    "lewis6991/gitsigns.nvim",
    lazy = true,
    event = {"InsertEnter"},
    opts = {},
  },
  {
    "NeogitOrg/neogit",
    lazy = true,
    keys = {"<leader>gb", ":Neogit cwd=%:p:h kind=floating<cr>"},
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
    },
    config = function()
      require("neogit").setup()
      vim.keymap.set("n", "<leader>gb", ":Neogit cwd=%:p:h kind=floating<cr>")
    end,
  },
}
