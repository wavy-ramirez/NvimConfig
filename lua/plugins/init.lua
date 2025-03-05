return {
	{ "EdenEast/nightfox.nvim" },
	{ 'echasnovski/mini.nvim',       version = '*' },
	{ 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
	{
		'rcarriga/nvim-notify',
		config = function()
			vim.notify = require("notify")
		end
	},
}
