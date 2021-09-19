-- To change default formatter from yapf to black
lvim.lang.python.formatters = {
	{
		exe = "black",
		args = { "--quiet", "--fast", "-" },
	},
}
lvim.lang.python.linters = {
	{
		exe = "flake8",
		args = {},
	},
}
