local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>sf", function() builtin.find_files() end, {desc = "Search Files"})
vim.keymap.set("n", "<leader><leader>", function() builtin.buffers() end, {desc = "Search Buffers"})
vim.keymap.set("n", "<leader>sh", function() builtin.help_tags() end, {desc = "Search Help Tags"})
vim.keymap.set("n", "<leader>ss", function() builtin.live_grep() end, {desc = "Search String"})
vim.keymap.set("n", "<leader>sbi", function() builtin.builtin() end, {desc = "Search Builtins"})
