local builtin = require("telescope.builtin")

local function th(cmd)
	return function()
		cmd(require("telescope.themes").get_ivy())
	end
end

vim.keymap.set("n", "<leader>sf", th(builtin.find_files), { desc = "Files" })
vim.keymap.set("n", "<leader><leader>", th(builtin.buffers), { desc = "Buffers" })
vim.keymap.set("n", "<leader>sh", th(builtin.help_tags), { desc = "Help Tags" })
vim.keymap.set("n", "<leader>sg", th(builtin.live_grep), { desc = "Live Grep" })
vim.keymap.set("n", "<leader>ss", th(builtin.grep_string), { desc = "Grep String" })
vim.keymap.set("n", "<leader>s.", th(builtin.oldfiles), { desc = "Recent Files" })
vim.keymap.set("n", "<leader>sr", th(builtin.resume), { desc = "Resume Last Search" })
vim.keymap.set("n", "<leader>sG", th(builtin.git_files), { desc = "Git Files" })
