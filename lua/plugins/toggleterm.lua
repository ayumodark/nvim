return {
	"akinsho/toggleterm.nvim",
  keys = "<c-t>",
	tag = "*",
	config = function()
		require("toggleterm").setup()
		vim.keymap.set("n", "<c-t>", "<cmd>ToggleTerm dir=%:p:h direction=float<cr>")
	end,
}
