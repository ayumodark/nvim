# Pre-Install
- Install `neovim`
- Install `git`
- Install `gcc`, or any other c compiler

# Quick Install
```
cd ~/.config && git clone -b main --single-branch https://github.com/ayumodark/nvim --depth=1 && rm -rf nvim/.git nvim/README.md
```
<hr>
<details>
<summary>File Structure</summary>

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
</details>

<details>
<summary><code>init.lua</code></summary>

calls lazy.nvim settings in lua/config/lazy.lua it simply contains

```
require("config.lazy")
```
</details>

<details>
<summary><code>lazy.lua</code></summary>

Installs lazy.nvim

```
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

***

require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
  install = { colorscheme = { "nord" } },
  checker = { enabled = true },
})
```

And defines vim settings before everything

```
***
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.background = "light"
vim.wo.number = true

vim.opt.swapfile = false

vim.keymap.set("n", "<c-k>", ":wincmd k<cr>")
vim.keymap.set("n", "<c-j>", ":wincmd j<cr>")
vim.keymap.set("n", "<c-h>", ":wincmd h<cr>")
vim.keymap.set("n", "<c-l>", ":wincmd l<cr>")

vim.keymap.set("n", "<c-b>", ":bnext<cr>")
***
```
