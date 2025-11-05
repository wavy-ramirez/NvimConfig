require("mason").setup()
local mr = require("mason-registry")
local installed = mr.get_installed_package_names()

for i, v in ipairs(installed) do
	vim.lsp.enable(v)
	-- vim.print(v)
end

vim.lsp.enable("lua_ls")
vim.lsp.enable("clojure-lsp")

require("nvim-treesitter.configs").setup {
	highlight = {
		enable = true,
	},
}
