local linters = require("lvim.lsp.null-ls.linters")

linters.setup({ { exe = "selene", filetypes = { "lua" } } })
