-- general

lvim.format_on_save = true
lvim.lint_on_save = true
lvim.colorscheme = "tokyonight"
vim.opt.wrap = true
vim.opt.timeoutlen = 100
-- lvim.log.level = "debug"

-- keymappings
lvim.leader = "space"

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.gitsigns.active = true
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.nvimtree.setup.filters.dotfiles = false
lvim.builtin.notify.active = true
lvim.builtin.treesitter.context_commentstring.enable = true
lvim.builtin.treesitter.autotag = true

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.matchup.enable = true

-- Formatters
require("format.black")
require("format.clang_format")
require("format.gofmt")
require("format.prettierd")
require("format.rustywind")
require("format.rustfmt")
require("format.stylua")

--Linters
require("lint.cppcheck")
require("lint.eslintd")
require("lint.flake8")
require("lint.selene")

--LSP
require("lsp-config.general")
require("lsp-config.tailwindcss")

-- Additional Plugins
lvim.plugins = {
	require("plugins.tokyo"),
	require("plugins.lsp_signature"),
	require("plugins.neoscroll"),
	require("plugins.colorizer"),
	require("plugins.vim_matchup"),
	require("plugins.trouble"),
	require("plugins.markdown_preview"),
	require("plugins.octo"),
	require("plugins.todo_comments"),
	require("plugins.rust_tools"),
	require("plugins.fidget"),
	require("plugins.surround_nvim"),
	require("plugins.prettier_nvim"),
}

-- WHICH KEY MAPPINGS

lvim.builtin.which_key.mappings["t"] = {
	name = "Diagnostics",
	t = { "<cmd>TroubleToggle<cr>", "trouble" },
	w = { "<cmd>TroubleToggle lsp_workspace_diagnostics<cr>", "workspace" },
	d = { "<cmd>TroubleToggle lsp_document_diagnostics<cr>", "document" },
	q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
	l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
	r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
	c = { "<cmd>TodoTrouble<cr>", "todo" },
}

lvim.builtin.which_key.mappings["c"] = nil
lvim.keys.normal_mode["<S-x>"] = ":BufferLinePickClose<CR>"

lvim.builtin.terminal.execs = { { "gitui", "gu", "Git Ui" } }
-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands = {{ "BufWinEnter", "*", "echo \"hi again\""}}
