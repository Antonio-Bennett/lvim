local M = {
	"phaazon/hop.nvim",
	event = "BufRead",
	config = function()
		require("hop").setup()
		vim.api.nvim_set_keymap("n", "sh", ":HopChar2<cr>", { silent = true })
		vim.api.nvim_set_keymap("n", "Sh", ":HopWord<cr>", { silent = true })
	end,
}

return M
