return {
  {
    "shaunsingh/nord.nvim",
    config = function()
      vim.cmd("colorscheme nord")
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
  },
  {
      "echasnovski/mini.indentscope",
      opts = {}
  },
  {
    "echasnovski/mini.tabline",
    opts = {},
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { 
      "nvim-tree/nvim-web-devicons"
    },
    opts = function()
      options = {
        theme = "nord"
      }
    end,
  },
}
