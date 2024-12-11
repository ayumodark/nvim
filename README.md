# Description

This is my personal neovim config with all the basics and fast startup time (~0.03 seconds),

feel free to fork and customize to your needs

## ✨ Images

font: Caskaydia Cove NF Mono

- Dashboard

  ![dashboard](https://github.com/ayumodark/nvim/blob/images/dashboard.png)

- highlighting

  ![lazy.lua](https://github.com/ayumodark/nvim/blob/images/lazy.lua.png)

- color highlighting

  ![color-highlight](https://github.com/ayumodark/nvim/blob/images/color-highlight.png)

## ⚙️ Requirements

- Install [neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md)
- Install [nerdfont](https://www.nerdfonts.com/font-downloads)
  - Configure terminal to use `nerdfont`
- Install [git](https://git-scm.com/downloads)
- Install any C compiler
- Install [node-js and npm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)

## 🚀 Quick Install

```
git clone -b config --single-branch --depth=1 https://github.com/ayumodark/nvim ~/.config/nvim && rm -rf ~/.config/nvim/.git && nvim
```

## 🛠️ Config Details

This config is managed using [lazy](https://lazy.folke.io/)

<details>
<summary> 📂 File Structure </summary>

This is the recommended file structure by lazy.nvim, every change in the `lua` directory is dynamically loaded

<img src="https://github.com/ayumodark/nvim/blob/images/eza-filetree.png" alt="eza-filetree">

<details>
<summary><code> 🔧 init.lua</code></summary>
calls lazy settings in <code>lua/config/lazy.lua</code> it simply contains <code>require("config.lazy")</code>
</details>
<details>
<summary><code> 💤 lua/config/lazy.lua</code></summary>
Installs lazy.nvim


<img src="https://github.com/ayumodark/nvim/blob/images/lazy.lua-explained.png" alt="lazy.lua-explained">

And calls `lua/config/settings.lua`, where all vim keykinds and options are declared

<img src="https://github.com/ayumodark/nvim/blob/images/settings.lua-explained.png" alt="settings.lua-explained">

</details>
</details>
<details>
<summary> 🔌 Plugins</summary>
Every plugin is a lua table that returns the plugin details


<img src="https://github.com/ayumodark/nvim/blob/images/plugindetails.png" alt="plugindetails">

The plugins used in this config:

📜 *FORMATTER*
- none-ls
    - fidget

🔀 _GIT_

- gitsigns
- Neogit
  - planery
  - diffview

🤖 _LSP_

- mason
  - nvim-lspconfig
  - mason-lspconfig
  - mason-null-ls

🖊️ _SNIPPETS_

- nvim-cmp
  - cmp-nvim-lsp
  - nvim-lspconfig
  - LuaSnip
    - cmp_luasnip
    - friendly-snippets

🌟 _UI_

- bufferline
  - nvim-web-devicons
- nvim-highlight-colors
- noice
  - nui
- indent-blankline
- nord
- lualine
  - nvim-web-devicons
- dashboard-nvim
  - nvim-web-devicons
- nvim-treesitter

🪛 _UX_

- nvim-tree
  - nvim-web-devicons
- oil
  - nvim-web-devicons
- nvim-autopairs
