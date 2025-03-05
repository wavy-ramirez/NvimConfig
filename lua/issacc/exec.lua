---@diagnostic disable:undefined-global

--- Switches to the last terminal in the buffer list
function Switch_to_term()
	local list_bufs = vim.api.nvim_list_bufs()
	local buf_names = vim.tbl_map(function(t)
		return vim.api.nvim_buf_get_name(t)
	end, list_bufs)

	for i = 1, #buf_names do
		if vim.startswith(buf_names[i], "term://") then
			vim.api.nvim_set_current_buf(list_bufs[i])
			return
		end
	end

	vim.cmd.tabnew()
	vim.cmd.term()
end

--- Switches To The Window with of The Last Terminal in the buffer list
function Switch_to_termwin()
	local list_wins = vim.api.nvim_list_wins()
	local buf_names = vim.tbl_map(function (t)
		return vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(t))
	end, list_wins)

	for i = 1, #buf_names do
		if vim.startswith(buf_names[i], "term://") then
			vim.api.nvim_set_current_win(list_wins[i])
			return
		end
	end

	Switch_to_term()
end

local cmd = ""
vim.keymap.set("n", "<leader>px", function()
	Switch_to_termwin()
	vim.fn.feedkeys("i" .. cmd .. "\r")
end, { desc = "Execute Cmd" })

vim.keymap.set("n", "<leader>pc", function()
	vim.ui.input({ prompt = "Enter Cmd: " }, function(item)
		cmd = item
	end)
end, { desc = "Put Command" })

vim.keymap.set("n", "<leader>pg", function()
	Switch_to_termwin()
end, { desc = "Goto Terminal" })
