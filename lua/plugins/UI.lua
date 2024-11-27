return {
  {
    "echasnovski/mini.indentscope",
    opts = {},
  },
  {
    "echasnovski/mini.tabline",
    opts = {},
  },
  {
    "brenoprata10/nvim-highlight-colors",
    opts = {},
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    lazy = true,
    opts = {},
  },
  {
    "shaunsingh/nord.nvim",
    config = function()
      vim.cmd("colorscheme nord")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("lualine").setup({
        options = {
          theme = "nord",
        },
      })
    end,
  },
  {
    "rcarriga/nvim-notify",
    config = function()
      vim.notify = require("notify")
      require("notify").history()
      require("notify").setup({
        render = "wrapped-compact",
        stages = "fade_in_slide_out",
        background_colour = "FloatShadow",
        timeout = 1000,
      })
    end,
  },
  {
    "j-hui/fidget.nvim",
    opts = {},
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        sync_install = true,
        auto_install = true,
        highlight = {
          enable = true,
          disable = function(lang, buf)
            local max_filesize = 100 * 1024
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
              return true
            end
          end,
        },
      })
    end,
  },
}
