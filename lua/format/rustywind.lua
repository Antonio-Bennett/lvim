local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{
		exe = "rustywind",
		filetypes = {
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"vue",
			"svelte",
			"html",
		},
	},
})
