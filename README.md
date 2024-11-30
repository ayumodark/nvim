# Images
![img1](https://github.com/ayumodark/nvim/blob/images/screenshot.png)
# Pre-Install
- Install `neovim`
- Install `git`
- Install `gcc`, or any other c compiler
- Install `npm`
- Install `nodejs`

# Quick Install
```
cd ~/.config && git clone -b config --single-branch https://github.com/ayumodark/nvim --depth=1 && rm -rf nvim/.git
```
<hr>
<details>
<summary>File Structure </summary>

This is the recommended file structure by lazy.nvim, every change in the `lua` directory is dynamically loaded 

```
~/.config/nvim
├── lua
│   ├── config
│   │   └── lazy.lua
│   └── plugins
│       ├── FORMATTER.lua
│       ├── GIT.lua
│       ├── LSP.lua
│       ├── UI.lua
│       └── UX.lua
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

--foo
***
--bar

require("lazy").setup({ -- load lazy default settings
  spec = {
    { import = "plugins" }, -- include `lua/plugins/*`
  },
  install = { colorscheme = { "nord" } }, -- theme lazy uses before loading anything
  checker = { enabled = true }, -- checks for updates
})
```

And declares vim settings before loading anything

```
--foo
***
-- hotkey used for keybinds
vim.g.mapleader = " "

-- enables true color for terminals
vim.opt.termguicolors = true

-- tabs spaces and width
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Default vim UI
vim.g.background = "light"

-- shows line number
vim.wo.number = true

-- disable swap file creation
vim.opt.swapfile = false

-- naviagate panes with vim keybinds (ctrl+k)
vim.keymap.set("n", "<c-k>", ":wincmd k<cr>")
vim.keymap.set("n", "<c-j>", ":wincmd j<cr>")
vim.keymap.set("n", "<c-h>", ":wincmd h<cr>")
vim.keymap.set("n", "<c-l>", ":wincmd l<cr>")

-- swaps through every open buffer (ctrl+b)
vim.keymap.set("n", "<c-b>", ":bnext<cr>")
***
--bar
```
</details>
</details>

<details>
<summary>Plugins</summary>

Every plugins is a lua table that returns the plugin details

```
return {
  "someone/someplugin", -- pointing to the plugin repo
  lazy = true, -- force lady laoding
  event = "VimEnter", -- when to load plugin
-- Or
  keys = {} -- load plugin when these keys are pressed
  dependencies = {
"someoneelse/somethingelse", lazy = true, -- load these when starting someplugin
}
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
