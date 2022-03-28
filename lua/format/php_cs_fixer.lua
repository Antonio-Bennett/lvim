local formatters = require("lvim.lsp.null-ls.formatters")

formatters.setup({
	{
		name = "phpcsfixer",
		exe = "php-cs-fixer",
		filetypes = { "php" },
		args = { "--rules=@Symfony", "--no-interaction", "--quiet", "fix", "$FILENAME" },
	},
})
