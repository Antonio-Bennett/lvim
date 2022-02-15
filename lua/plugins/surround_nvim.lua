local M = {
	"blackCauldron7/surround.nvim",
	config = function()
		require("surround").setup({ mappings_style = "sandwich" })
	end,
}

return M
