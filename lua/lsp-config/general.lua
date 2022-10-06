lvim.lsp.automatic_servers_installation = false
lvim.lsp.diagnostics.virtual_text = true

-- Overides

--Needed for rust tools
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "rust_analyzer" })

-- --Needed for tailwindcss to work
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(name)
-- 	return name ~= "tailwindcss"
-- end, lvim.lsp.automatic_configuration.skipped_servers)
