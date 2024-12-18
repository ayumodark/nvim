vim.g.mapleader = " "

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.background = "light"
vim.wo.number = true

vim.opt.termguicolors = true
vim.opt.swapfile = false

vim.o.foldcolumn = "1" 
vim.o.foldlevel = 99 
vim.o.foldlevelstart = 99
vim.o.foldenable = true

vim.keymap.set("n", "<c-b>", "<cmd>bnext<cr>")
vim.keymap.set("i", "<c-b>", "<cmd>bnext<cr>")
vim.keymap.set("v", "<c-b>", "<cmd>bnext<cr>")

vim.keymap.set("i", "<c-k>", "<Up>")
vim.keymap.set("i", "<c-j>", "<Down>")
vim.keymap.set("i", "<c-h>", "<Left>")
vim.keymap.set("i", "<c-l>", "<Right>")
