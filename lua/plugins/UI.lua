return {
  {
    "shaunsingh/nord.nvim",
    opts = function()
      vim.cmd("colorscheme nord")
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    dependencies = {
      "echasnovski/mini.indentscope"
    },
  },
  {
    "echasnovski/mini.tabline",
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
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      build = ":TSUpdate",
      ensure_installed = { "lua" },
      ignore_install = {},
      sync_install = false,
      auto_install = true,
      
      highlight = {
        enable = true,
        disable = {},
        
        additional_vim_regex_highlighting = false,
        disable = function(lang, buf)
          local max_filesize = 100 * 1024
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end,
      },
    end,
  },
}
