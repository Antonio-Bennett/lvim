vim.list_extend(lvim.lsp.override, {"rust"})
local M = {
	"simrat39/rust-tools.nvim",
	config = function()
		require("rust-tools").setup({
			tools = {
				autoSetHints = true,
				hover_with_actions = true,
				runnables = {
					use_telescope = true,
				},
				inlay_hints = {
					only_current_line = false,
					show_parameter_hints = true,
					parameter_hints_prefix = "<-",
					other_hints_prefix = "=>",
					max_len_align = false,
					max_len_align_padding = 1,
					right_align = false,
					right_align_padding = 7,
					highlight = "Comment",
				},
			},
			server = {
				cmd = { vim.fn.stdpath("data") .. "/lsp_servers/rust/rust-analyzer" },
				on_attach = require("lvim.lsp").common_on_attach,
				on_init = require("lvim.lsp").common_on_init,
			},
		})
	end,
	ft = { "rust", "rs" },
}

return M
