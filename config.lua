-- general
lvim.format_on_save = false
lvim.lint_on_save = true
lvim.colorscheme = "tokyonight-storm"
vim.opt.wrap = true
vim.opt.timeoutlen = 100
lvim.log.level = ""

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.gitsigns.active = true
lvim.builtin.alpha.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.side = "left"
-- lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.nvimtree.setup.filters.dotfiles = false
lvim.builtin.nvimtree.setup.filters.custom = {}
lvim.builtin.treesitter.context_commentstring.enable = true
lvim.builtin.treesitter.autotag = true

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = "all"
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.matchup.enable = true

-- Formatters
require("format")
--Linters
require("lint")
--LSP
require("lsp-config")
--DAP
require("dap")
-- Additional Plugins
require("plugins")
-- KEY MAPPINGS
require("keymappings")
--Autocommands
require("autocommands")
