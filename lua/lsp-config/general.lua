lvim.lsp.diagnostics.virtual_text = true
vim.list_extend(lvim.lsp.override, { "rust_analyzer" })
lvim.lsp.override = vim.tbl_filter(function(name)
	return name ~= "tailwindcss"
end, lvim.lsp.override)
