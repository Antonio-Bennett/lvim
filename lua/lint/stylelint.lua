local linters = require("lvim.lsp.null-ls.linters")

linters.setup({ { exe = "stylelint", filetypes = { "scss", "less", "css", "sass" } } })
