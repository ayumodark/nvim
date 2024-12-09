# Images
font: Caskaydia Cove NF Mono
- Dashboard using `alpha`

    ![dashboard](https://github.com/ayumodark/nvim/blob/images/dashboard.png)

- highlighting by `treesitter`

    ![lazy.lua](https://github.com/ayumodark/nvim/blob/images/lazy.lua.png)

- color highlighting by `nvim-highlight-color`

    ![css](https://github.com/ayumodark/nvim/blob/images/css.png)

# Requirements
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

    ![eza-filetree](https://github.com/ayumodark/nvim/blob/images/eza-filetree.png)

<details>
<summary><code>init.lua</code></summary>

calls lazy.nvim settings in `lua/config/lazy.lua` it simply contains

`require("config.lazy")`
</details>

<details>
<summary><code>lua/config/lazy.lua</code></summary>

Installs lazy.nvim

  ![lazy.lua-comments](https://github.com/ayumodark/nvim/blob/images/lazy.lua-comments.png)

And calls `lua/vim-settings`, where all vim keykinds and options are declared

</details>
</details>

<details>
<summary>Plugins</summary>

Every plugin is a lua table that returns the plugin details

    ![plugindetails](https://github.com/ayumodark/nvim/blob/images/plugindetails.png)

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
