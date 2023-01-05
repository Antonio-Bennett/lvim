local M = {
	"pwntester/octo.nvim",
	config = function()
		require("octo").setup()
	end,
	event = "BufRead",
}

return M
