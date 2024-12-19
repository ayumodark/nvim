return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  keys = {
    "<leader>of",
    "<leader>ff",
    "<leader>lg",
    "<leader>ff",
    "<leader>fb",
    "<leader>fh",
  },
  cmd = "Telescope",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
  },
  config = function()
    require("telescope").setup({
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown(),
        },
      },
    })
    require("telescope").load_extension("ui-select")
    vim.keymap.set("n", "<leader>of", "<cmd>Telescope oldfiles<cr>")
    vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
    vim.keymap.set("n", "<leader>lg", "<cmd>Telescope live_grep<cr>")
    vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
    vim.keymap.set("n", "<leader>ht", "<cmd>Telescope help_tags<cr>")
  end,
}
