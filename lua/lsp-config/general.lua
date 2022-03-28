lvim.lsp.automatic_servers_installation = false
lvim.lsp.diagnostics.virtual_text = true

-- Overides

--Needed for rust tools
vim.list_extend(lvim.lsp.override, { "rust_analyzer" })

--Needed for tailwindcss to work
lvim.lsp.override = vim.tbl_filter(function(name)
	return name ~= "tailwindcss"
end, lvim.lsp.override)
