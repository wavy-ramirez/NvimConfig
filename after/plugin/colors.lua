function ColorMyPencils(opt)
	opt = opt or "carbonfox"
	vim.cmd.colorscheme(opt)

	vim.api.nvim_set_hl(0, "Normal", {bg = 0})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "#181818"})
	vim.api.nvim_set_hl(0, "WinSeparator", {bg = 0})
	vim.api.nvim_set_hl(0, "StatusLineNC", {bg = "#080808"})
	vim.api.nvim_set_hl(0, "StatusLine", {bg = "#181818"})
	vim.api.nvim_set_hl(0, "TabLine", {bg = "#040404"})
	vim.api.nvim_set_hl(0, "TabLineFill", {bg = "#080808"})
	vim.api.nvim_set_hl(0, "TabLineSel", {bg = "#480808"})

	vim.cmd("TSEnable highlight")
end

ColorMyPencils("habamax")
