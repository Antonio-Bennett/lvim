local linters = require("lvim.lsp.null-ls.linters")

linters.setup({
	{
		exe = "cppcheck",
		filetypes = { "cpp", "c" },
	},
})
