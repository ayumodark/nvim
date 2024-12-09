vim.g.mapleader = " "

vim.opt.termguicolors = true

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

vim.keymap.set("n", "<leader>b", ":bnext<cr>")

vim.keymap.set("n", "<c-w>", ":w<cr>")
vim.keymap.set("n", "<c-q>", ":q<cr>")
vim.keymap.set("n", "<c-b>", ":bdelete<cr>")
