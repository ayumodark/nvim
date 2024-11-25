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

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.background = "light"
vim.wo.number = true

vim.opt.swapfile = false

vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
    
  vim.keymap.set("n", "<leader>f", ":lua MiniFiles.open()<cr>")
  vim.keymap.set("n", "<leader>p", ":Pick files<cr>")

  vim.keymap.set("n", "<leader>fr", " lua vim.lsp.buf.format()<cr>")
  
  vim.keymap.set("n", "<leader>ga", ":Git add .<cr>")
  vim.keymap.set("n", "<leader>gc", ":Git commit<cr>")
  vim.keymap.set("n", "<leader>gp", ":Git push<cr>")
  vim.keymap.set("n", "<leader>gb", ":Neogit cwd=%:p:h kind=floating<cr>")

  install = { colorscheme = { "nord" } },
  checker = { enabled = true },
})
