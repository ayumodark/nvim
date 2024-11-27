# Pre-Install
- Install `neovim`
- Install `git`
- Install `gcc`, or any other c compiler

# Quick Install
```
cd ~/.config && git clone -b nvim --single-branch https://github.com/ayumodark/nvim --depth=1 && rm -rf nvim/.git
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
│       ├── LSP.lua
│       ├── UI.lua
│       ├── UX.lua
│       ├── autosuggestion.lua
│       └── git.lua
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
vim.g.mapleader = " " -- defines <leader>, used for keybinds

vim.cmd("set expandtab") -- use space instead of tab
vim.cmd("set tabstop=2") -- width of the character
vim.cmd("set softtabstop=2") -- number of whitespace to use while editing
vim.cmd("set shiftwidth=2") -- number of whitespace to use

vim.g.background = "light" -- selection/ui theme
vim.wo.number = true -- shows line number on the left side

vim.opt.swapfile = false -- disables swap file creation

-- pane navigation using vim bindings (Ctrl+k)
vim.keymap.set("n", "<c-k>", ":wincmd k<cr>")
vim.keymap.set("n", "<c-j>", ":wincmd j<cr>")
vim.keymap.set("n", "<c-h>", ":wincmd h<cr>")
vim.keymap.set("n", "<c-l>", ":wincmd l<cr>")

-- buffer navigation (Ctrl+b), swaps through every open buffer
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
