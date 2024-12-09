# ✨ Images
font: Caskaydia Cove NF Mono
- Dashboard using `alpha`

    ![dashboard](https://github.com/ayumodark/nvim/blob/images/dashboard.png)

- highlighting by `treesitter`

    ![lazy.lua](https://github.com/ayumodark/nvim/blob/images/lazy.lua.png)

- color highlighting by `nvim-highlight-color`

    ![color-highlight](https://github.com/ayumodark/nvim/blob/images/color-highlight.png)

# ⚙️  Requirements
- Install `neovim`
- Install `nerdfont`, configure terminal to use `nerdfont`
- Install `git`
- Install `gcc`, or any other c compiler
- Install `npm`
- Install `nodejs`

# 🚀 Quick Install
```
cd ~/.config && git clone -b config --single-branch https://github.com/ayumodark/nvim --depth=1 && rm -rf nvim/.git
```

# 🛠️ Config Details
<details>
<summary>File Structure </summary>

This is the recommended file structure by lazy.nvim, every change in the `lua` directory is dynamically loaded 

<img src="https://github.com/ayumodark/nvim/blob/images/eza-filetree.png" alt="exa-filetree">

<details>
<summary><code>init.lua</code></summary>

calls lazy.nvim settings in `lua/config/lazy.lua` it simply contains

`require("config.lazy")`
</details>

<details>
<summary><code>lua/config/lazy.lua</code></summary>

Installs lazy.nvim

<img src="https://github.com/ayumodark/nvim/blob/images/lazy.lua-comments.png" alt="lazy.lua-comments">

And calls `lua/vim-settings`, where all vim keykinds and options are declared

</details>
</details>

<details>
<summary>Plugins</summary>

Every plugin is a lua table that returns the plugin details

<img src="https://github.com/ayumodark/nvim/blob/images/plugindetails.png" alt="plugindetails">

The plugins used in this config:

*FORMATTER*
- none-ls
    - fidget

*GIT*
- gitsigns
- Neogit
  - planery
  - diffview

*LSP*
- mason
    - nvim-lspconfig
    - mason-lspconfig
    - ,ason-null-ls

*SNIPPETS*
- nvim-cmp
    - cmp-nvim-lsp
    - nvim-lspconfig
    - LuaSnip
        - cmp_luasnip
        - friendly-snippets

*UI*
- bufferline
    - nvim-web-devicons
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
- nvim-tree
    - nvim-web-devicons
- oil
    - nvim-web-devicons
- nvim-autopairs
- markdown-preview
