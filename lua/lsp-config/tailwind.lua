vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "tailwindcss" })

local opts = {
	filetypes = { "css", "scss", "less", "svelte" },
}

require("lvim.lsp.manager").setup("tailwindcss", opts)
