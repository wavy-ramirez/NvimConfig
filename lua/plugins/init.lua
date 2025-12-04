return {
	'nyoom-engineering/oxocarbon.nvim',
	'sainnhe/gruvbox-material',
	'Mofiqul/vscode.nvim',
	'rcarriga/nvim-notify',
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		}
	},
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		opts = {}
	},
	{
		"folke/which-key.nvim",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = {
			highlight = {
				enable = true,
			}
		},
	},
	{ "nvim-tree/nvim-web-devicons", opts = {} },
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			}
		},
	},
	{
		"mason-org/mason.nvim",
		opts = {}
	},
	"neovim/nvim-lspconfig",
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
}
