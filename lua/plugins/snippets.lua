return {
  {
    "hrsh7th/nvim-cmp",
    lazy = true,
    event = {"InsertEnter"},
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "neovim/nvim-lspconfig",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
    config = function()
      local cmp = require("cmp")
      require("luasnip.loaders.from_vscode").lazy_load()
      cmp.setup({
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<c-n>"] = cmp.mapping.scroll_docs(-4),
          ["<c-p>"] = cmp.mapping.scroll_docs(4),
          ["<c-space>"] = cmp.mapping.complete(),
          ["<c-q>"] = cmp.mapping.abort(),
          ["<cr>"] = cmp.mapping.confirm({select = true}),
        }),
        sources = cmp.config.sources({
          {name = "nvim_lsp"},
          {name = "luasnip"}
        }, {
          {name = "buffer"},
        }),
      })
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      require("lspconfig")["lua_ls"].setup({
        capabilities = capabilities,
      })
      require("lspconfig")["pyright"].setup({
        capabilities = capabilities,
      })
      require("lspconfig")["cssls"].setup({
        capabilities = capabilities,
      })
      require("lspconfig")["html"].setup({
        capabilities = capabilities,
      })
      require("lspconfig")["ts_ls"].setup({
        capabilities = capabilities,
      })
    end,
  },
}
