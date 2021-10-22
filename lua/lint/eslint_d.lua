local linters = require("lvim.lsp.null-ls.linters")

linters.setup({
	{
		exe = "eslint_d",
		filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "svelte" },
	},
})
