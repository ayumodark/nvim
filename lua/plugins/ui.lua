return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = {"nvim-tree/nvim-web-devicons", lazy = true},
    lazy = true,
    event = "VeryLazy",
    opts = {},
  },
  {
    "brenoprata10/nvim-highlight-colors",
    lazy = true,
    event = "VeryLazy",
    config = function()
      require("nvim-highlight-colors").setup({
        render = "foreground",
     })
    end,
  }, 
  {
    "folke/noice.nvim",
    lazy = true,
    event = "VeryLazy",
    dependencies = {"MunifTanjim/nui.nvim", lazy = true},
    config = function()
      require("noice").setup({
        lsp = {
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true,
          },
        },
        presets = {
          bottom_search = true,
          command_palette = true,
          long_message_to_split = true,
          inc_rename = true,
          lsp_doc_border = true,
        },
      })
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    lazy = true,
    event = {'BufNewFile', 'BufRead', "InsertEnter"},
    main = "ibl",
    opts = {},
  },
  {
    "shaunsingh/nord.nvim",
    lazy = true,
    event = "VimEnter",
    config = function()
      vim.cmd("colorscheme nord")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    lazy = true,
    event = "VeryLazy",
    dependencies = {"nvim-tree/nvim-web-devicons", lazy = true},
    config = function()
      require("lualine").setup({
        options = {
          theme = "nord",
        },
      })
    end,
  },
  {
    "goolord/alpha-nvim",
    lazy = true,
    event = "VimEnter",
    dependencies = {"nvim-tree/nvim-web-devicons", lazy = true},
    config = function()
      local startify = require("alpha.themes.startify")
      startify.section.header.val = {
        [[                                                                       ]],
        [[                                                                     ]],
        [[       ████ ██████           █████      ██                     ]],
        [[      ███████████             █████                             ]],
        [[      █████████ ███████████████████ ███   ███████████   ]],
        [[     █████████  ███    █████████████ █████ ██████████████   ]],
        [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
        [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
        [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
        [[                                                                       ]],
      }
      startify.file_icons.provider = "devicons"
      require("alpha").setup(startify.config)
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = true,
    event = {"BufNewFile", "BufRead", "InsertEnter"},
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
