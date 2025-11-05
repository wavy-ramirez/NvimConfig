vim.g.mapleader = ' '

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.clipboard = "unnamedplus"

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, {desc = "Open Netrw"})
vim.keymap.set("n", "<C-h>", "<C-w>h", {desc = ""})
vim.keymap.set("n", "<C-l>", "<C-w>l", {desc = ""})
vim.keymap.set("n", "<C-j>", "<C-w>j", {desc = ""})
vim.keymap.set("n", "<C-k>", "<C-w>k", {desc = ""})
vim.keymap.set("x", "<leader>p", "\"_P", {desc = ""})
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>", {desc = ""})
vim.keymap.set("n", "<ESC>", vim.cmd.nohl, {desc = ""})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = ""})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = ""})

vim.keymap.set("n", "<C-d>", "<C-d>zz", {desc = ""})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {desc = ""})
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, {desc = "Hover"})
vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end, {desc = "Format current buffer"})
vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, {desc = "Goto Definition"})
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, {desc = "Open diagnostic Quickfix List"})
