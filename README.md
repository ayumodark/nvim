# Images
font: Caskaydia Cove NF Mono
- Dashboard using `alpha`

    ![dashboard](https://github.com/ayumodark/nvim/blob/images/dashboard.png)

- highlighting by `treesitter`

    ![lazy.lua](https://github.com/ayumodark/nvim/blob/images/lazy.lua.png)

- color highlighting by `nvim-highlight-color`

    ![css](https://github.com/ayumodark/nvim/blob/images/css.png)

# Pre-Install
- Install `neovim`
- Install `nerdfont`, configure terminal to use `nerdfont`
- Install `git`
- Install `gcc`, or any other c compiler
- Install `npm`
- Install `nodejs`

# Quick Install
```
cd ~/.config && git clone -b config --single-branch https://github.com/ayumodark/nvim --depth=1 && rm -rf nvim/.git
```

# Config Details
<details>
<summary>File Structure </summary>

This is the recommended file structure by lazy.nvim, every change in the `lua` directory is dynamically loaded 

```
~/.config/nvim
├── lua
│   ├── config
│   │   └── lazy.lua    
│   ├── plugins
│   │   ├── formatter.lua
│   │   ├── git.lua
│   │   ├── lsp.lua
│   │   ├── snippets.lua
│   │   ├── ui.lua
│   │   └── ux.lua
│   └── vim-settings.lua
└── init.lua
```
<details>
<summary><code>init.lua</code></summary>

calls lazy.nvim settings in `lua/config/lazy.lua` it simply contains

`require("config.lazy")`
</details>

<details>
<summary><code>lua/config/lazy.lua</code></summary>

Installs lazy.nvim

```
-- Downloading lazy from it's repository
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("vim-settings")

require("lazy").setup({ -- load lazy default settings
  spec = {
    { import = "plugins" }, -- include `lua/plugins/*`
  },
  install = { colorscheme = { "nord" } }, -- theme lazy uses before loading anything
  checker = { enabled = true }, -- checks for updates
})
```

And calls `lua/vim-settings`, where all vim keykinds and options are declared

```
vim.g.mapleader = " " -- hotkey used for keybinds

vim.opt.termguicolors = true -- enables true color for terminals

-- tab spaces and width
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.background = "light" -- Default vim UI (select/highlight)
vim.wo.number = true -- shows line number

vim.opt.swapfile = false -- disable swap file creation

-- naviagate panes with vim keybinds (ctrl+k)
vim.keymap.set("n", "<c-k>", ":wincmd k<cr>")
vim.keymap.set("n", "<c-j>", ":wincmd j<cr>")
vim.keymap.set("n", "<c-h>", ":wincmd h<cr>")
vim.keymap.set("n", "<c-l>", ":wincmd l<cr>")

vim.keymap.set("n", "<c-b>", ":bnext<cr>") -- swaps through every open buffer (ctrl+b)

-- quickly write and quit
vim.keymap.set("n", "<c-w>", ":w!<cr>")
vim.keymap.set("n", "<c-q>", ":q!<cr>")
```
</details>
</details>

<details>
<summary>Plugins</summary>

Every plugin is a lua table that returns the plugin details

```
return {
  "someone/someplugin", -- pointing to the plugin repo
  lazy = true, -- force lazy loading
  event = "VimEnter", -- when to load plugin
--OR
  keys = {}, -- load plugin when these keys are pressed
--OR
  cmd = "somefeature", -- load plugin when this command is executed
--OR
  ft = "text", -- load plugin when working in a specific filetype
  dependencies = {
    "someoneelse/somethingelse", lazy = true, -- load these when starting "someplugin"
  },
  opts = {}, -- load plugin default settings
--OR
  config = function() -- pass custom settings
    require("someplugin").setup({ -- call defaults settings
      someplugin.somefeature = true -- and configure some to be custom
    })
    vim.keymap.set("n", "<c-w>", ":somefeature<cr>") -- vim settings *after* loading plugin
  end, -- end config section
}
```

The plugins used in this config:

*FORMATTER*
- none-ls
- fidget

*GIT*
- gitsigns
- toggleterm
- Neogit
  - planery
  - diffview

*LSP*
- Mason
    - nvim-lspconfig
    - Mason-lspconfig
    - Mason-null-ls

*SNIPPETS*
- nvim-cmp
    - cmp-nvim-lsp
    - nvim-lspconfig
    - luasnip
        - cmp_luasnip
        - friendly-snippet

*UI*
- bufferline
- nvim-highlight-colors
- noice
    - nui
- indent-blankline
- nord
- lualine
    - nvim-web-devicons
- alpha
    - nvim-web-devicons
- nvim-treesitter

*UX*
- toggleterm
- nvim-autopairs
- markdown-preview
