local formatters = require("lvim.lsp.null-ls.formatters")

formatters.setup({
	{
		exe = "prettier",
		filetypes = {
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"vue",
			"svelte",
			"css",
			"scss",
			"less",
			"html",
			"json",
			"yaml",
			-- "markdown",
			"graphql",
		},
	},
})
