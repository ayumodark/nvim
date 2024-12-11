return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		event = { "BufRead", "BufReadPost", "BufNewFile" },
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = true,
	},
	{
		"brenoprata10/nvim-highlight-colors",
		event = "VeryLazy",
		opts = {
			render = "foreground",
		},
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = { "MunifTanjim/nui.nvim", "j-hui/fidget.nvim" },
		opts = {
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
			presets = {
				bottom_search = true,
				command_palette = true,
				long_message_to_split = true,
				inc_rename = true,
				lsp_doc_border = true,
			},
		},
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		event = { "BufRead", "BufReadPost", "BufNewFile" },
		main = "ibl",
		config = true,
	},
	{
		"shaunsingh/nord.nvim",
		lazy = false,
		config = function()
			vim.cmd("colorscheme nord")
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			options = {
				theme = "nord",
			},
		},
	},
	{
		"nvimdev/dashboard-nvim",
		event = "UIEnter",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			config = {
				header = {
					[[                                                                       ]],
					[[                                                                     ]],
					[[       ████ ██████           █████      ██                     ]],
					[[      ███████████             █████                             ]],
					[[      █████████ ███████████████████ ███   ███████████   ]],
					[[     █████████  ███    █████████████ █████ ██████████████   ]],
					[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
					[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
					[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
					[[                                                                       ]],
				},
			},
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		event = "VeryLazy",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				sync_install = true,
				auto_install = true,
				highlight = {
					enable = true,
					disable = function(lang, buf)
						local max_filesize = 100 * 1024
						local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
						if ok and stats and stats.size > max_filesize then
							return true
						end
					end,
				},
			})
		end,
	},
}
