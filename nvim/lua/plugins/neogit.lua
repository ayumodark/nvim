return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional - Diff integration
    "echasnovski/mini.pick",         -- optional
  },
  config = function()
    vim.keymap.set("n", "<leader>ng", ":Neogit cwd=%:p:h kind=floating<CR>")
  end
}
