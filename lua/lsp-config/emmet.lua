lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(name)
	return name ~= "emmet_ls"
end, lvim.lsp.automatic_configuration.skipped_servers)

local opts = {
	filetypes = { "html", "typescriptreact", "javascriptreact", "svelte", "css", "sass", "scss", "less" },
}

require("lvim.lsp.manager").setup("emmet_ls", opts)
