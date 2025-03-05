return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim', { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' } },
	config = function()
		local telescope = require("telescope")
		telescope.setup{
			defaults = {
				layout_config = {
					vertical = { width = 0.9, height = 0.9 },
					horizontal = { width = 0.9, height = 0.9 },
				},
			},
			pickers = {
				find_files = {
					theme = "ivy"
				},
				grep_string = {
					theme = "ivy"
				},
				buffers = {
					theme = "ivy"
				},
			},
			extensions = {
				fzf = {
					fuzzy = true,
				}
			},
		}

		telescope.load_extension("fzf")
	end,
}
