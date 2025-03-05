return {
	"Exafunction/codeium.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>pec", function ()
			require("codeium").setup{
				enable_cmp_source = false,
        virtual_text = {
          enabled = true,
          key_bindings = {
            accept = false,
          }
        }
			}
		end, { desc = "Codeium: Enable Codeium" })

		vim.keymap.set("n", "<leader>pdc", function ()
			require("codeium").setup{
				enable_cmp_source = false,
        virtual_text = {
          enabled = false,
          key_bindings = {
            accept = false,
          }
        }
			}
		end, { desc = "Codeium: Disable Codeium" })

		vim.g.ai_accept = function()
			if require("codeium.virtual_text").get_current_completion_item() then
				vim.api.nvim_input(require("codeium.virtual_text").accept())
				return true
			end
		end
	end,
}
