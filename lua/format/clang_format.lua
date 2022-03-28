local formatters = require("lvim.lsp.null-ls.formatters")

formatters.setup({ { exe = "clang_format", filetypes = { "c", "cpp", "java" } } })
