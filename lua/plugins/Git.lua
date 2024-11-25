return {
  {
    "lewis6991/gitsigns.nvim",
    opts = {},
  },
  {
    "echasnovski/mini.git",
    opts = {},
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",         
      "sindrets/diffview.nvim",
      "echasnovski/mini.pick",
    },
    config = true
    opts = {}
  },
}
