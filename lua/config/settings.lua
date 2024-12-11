vim.g.mapleader = " "

vim.opt.termguicolors = true

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.background = "light"
vim.wo.number = true

vim.opt.swapfile = false

vim.keymap.set("n", "<c-b>", "<cmd>bnext<cr>")
vim.keymap.set("i", "<c-b>", "<cmd>bnext<cr>")

vim.keymap.set("i", "<c-k>", "<Up>")
vim.keymap.set("i", "<c-j>", "<Down>")
vim.keymap.set("i", "<c-h>", "<Left>")
vim.keymap.set("i", "<c-l>", "<Right>")
