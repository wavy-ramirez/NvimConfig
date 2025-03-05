---@diagnostic disable:undefined-global

vim.g.localleader = "\\"
vim.g.mapleader = " "
vim.g.have_nerd_font = true
vim.opt.undofile = true
vim.opt.inccommand = 'split'
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = true

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "View Current Dir" })
vim.keymap.set("n", "<Escape>", vim.cmd.nohl, { desc = "" })
vim.keymap.set("t", "<Escape>", "<C-\\><C-n>", { desc = "" })
vim.keymap.set("v", "<leader>x", ":lua<cr>", { desc = "Exec Lua" })
vim.keymap.set("n", "<leader>L", ":Lazy<CR>", {desc = "Open Lazy"})

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "" })

vim.keymap.set("n", "<C-S-H>", "<C-w>H", { desc = "" })
vim.keymap.set("n", "<C-S-J>", "<C-w>J", { desc = "" })
vim.keymap.set("n", "<C-S-K>", "<C-w>K", { desc = "" })
vim.keymap.set("n", "<C-S-L>", "<C-w>L", { desc = "" })

vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, { desc = "Goto Definition" })
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, { desc = "Hover lsp" })
vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end, { desc = "Format Buffer" })
vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, { desc = "Rename" })
vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, { desc = "Next Diagnostic" })
vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, { desc = "Prev Diagnostic" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open Quickfix list" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "" })

vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({timeout = 200})
	end
})

vim.api.nvim_create_autocmd("TermOpen", {
	callback = function()
		vim.o.number = false
		vim.o.relativenumber = false
	end
})

vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)
