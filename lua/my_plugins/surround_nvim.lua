local M = {
	"ur4ltz/surround.nvim",
	config = function()
		require("surround").setup({ mappings_style = "sandwich" })
	end,
}

return M
