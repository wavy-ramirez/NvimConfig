require("mason").setup{}
require("mason-lspconfig").setup()

require("mason-lspconfig").setup_handlers {
	function (server_name)
		require("lspconfig")[server_name].setup {}
	end
}

local blink_config = require("blink.cmp.config")

blink_config.keymap["<S-Tab>"] = {"snippet_forward", function ()
	if vim.g.ai_accept then
		return vim.g.ai_accept()
	end
end, "fallback"}

require("blink.cmp").setup(blink_config)
