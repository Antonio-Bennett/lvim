lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(name)
	return name ~= "eslint"
end, lvim.lsp.automatic_configuration.skipped_servers)
