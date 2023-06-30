vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "cssls" })

local opts = {
	filetypes = { "css", "scss", "less", "svelte" },
}

require("lvim.lsp.manager").setup("cssls", opts)
