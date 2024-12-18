return {
	"nvimtools/none-ls.nvim",
	keys = "<leader>r",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.prettierd,
			},
		})
		vim.keymap.set("n", "<leader>r", "<cmd>lua vim.lsp.buf.format()<cr>")
	end,
}
