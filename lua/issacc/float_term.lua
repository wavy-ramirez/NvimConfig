local term_bufn = vim.api.nvim_create_buf(false, true)
local win = -1
term_bufn = vim.api.nvim_create_buf(false, true)

local create_window = function()
	local width = math.floor(vim.o.columns * 1)
	local height = math.floor(vim.o.lines * 1)

	if not vim.api.nvim_buf_is_valid(term_bufn) then
		term_bufn = vim.api.nvim_create_buf(false, true)
	end

	return vim.api.nvim_open_win(
		term_bufn,
		true,
		{
			relative = 'editor',
			style = "minimal",
			-- border = {"x", "", " ", "", "x", "", "", ""},
			border = "rounded",
			title = "Terminal",
			width = width,
			height = height - 3,
			col = math.floor((vim.o.columns - width) / 2),
			row = math.floor((vim.o.lines - height) / 2),
		}
	)
end

vim.api.nvim_create_user_command("FloatTerminal", function()
	if not vim.api.nvim_win_is_valid(win) then
		win = create_window()
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
		if vim.bo[term_bufn].buftype ~= "terminal" then
			vim.cmd.terminal()
		end
	else
		vim.api.nvim_win_hide(win)
	end
end, {})

vim.keymap.set("n", "<leader>t", function() vim.cmd("FloatTerminal") end, { desc = "Opens The Terminal" })
