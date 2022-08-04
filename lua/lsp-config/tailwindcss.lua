--
-- Does package.json file contain speficied configuration or dependency?
-- (e.g. "prettier")
-- IMPORTANT! package.json file is found only if current working directory (cwd)
-- is in the root of the project, i.e. lvim was launched in the directory
-- where package.json is or vim-rooter (or something similar) is activated
--
local is_in_package_json = function(field)
	if vim.fn.filereadable(vim.fn.getcwd() .. "/package.json") ~= 0 then
		local package_json = vim.fn.json_decode(vim.fn.readfile("package.json"))
		if package_json[field] ~= nil then
			return true
		end
		local dev_dependencies = package_json["devDependencies"]
		if dev_dependencies ~= nil and dev_dependencies[field] ~= nil then
			return true
		end
		local dependencies = package_json["dependencies"]
		if dependencies ~= nil and dependencies[field] ~= nil then
			return true
		end
	end
	return false
end

--
-- Does current project contain tailwindcss configuration
--
local project_has_tailwindcss_dependency = function()
	return (vim.fn.glob("tailwind*") ~= "" or is_in_package_json("tailwindcss"))
end

--- Setup tailwindcss LSP if project has tailwindcss configuration
if project_has_tailwindcss_dependency() == true then
	local lsp_installer_servers = require("nvim-lsp-installer.servers")
	local _, requested_server = lsp_installer_servers.get_server("tailwindcss")
	local opts = {
		cmd = requested_server._default_options.cmd,
	}

	require("lvim.lsp.manager").setup("tailwindcss", opts)
end

-- local options = {
-- 	cmd = {
-- 		-- .. "/lsp_servers/tailwindcss/@tailwindcss/node_modules/language-server/bin/tailwindcss-language-server",
-- 		-- "tailwindcss-language-server",
-- 		vim.fn.stdpath("data") .. "/lsp_servers/tailwindcss_npm/node_modules/.bin/tailwindcss-language-server",
-- 		"--stdio",
-- 	},
-- }

-- if project_has_tailwindcss_dependency() == true then
-- 	require("lvim.lsp.manager").setup("tailwindcss", options)
-- end
