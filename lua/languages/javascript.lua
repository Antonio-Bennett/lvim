lvim.lang.javascript.formatters = {
	{
		exe = "prettierd",
		args = { "$FILENAME" },
	},
}
lvim.lang.javascript.linters = {
	{
		exe = "eslint_d",
		args = { "--fix-to-stdout", "--stdin", "--stdin-filepath", "$FILENAME" },
	},
}
