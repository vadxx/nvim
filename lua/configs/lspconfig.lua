-- For configuration see the Wiki: https://github.com/neovim/nvim-lspconfig/wiki
-- Autocompletion settings of "nvim-cmp" are defined in plugins/nvim-cmp.lua

local installer_st, installer = pcall(require, 'nvim-lsp-installer')

if not installer_st then
	return
end

installer.on_server_ready(function(server)
	local opts = {}
	server:setup(opts)
end)



