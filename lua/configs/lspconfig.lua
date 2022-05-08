-- For configuration see the Wiki: https://github.com/neovim/nvim-lspconfig/wiki
-- Autocompletion settings of "nvim-cmp" are defined in plugins/nvim-cmp.lua

local lspconf_status, lspconfig = pcall(require, 'lspconfig')
local saga_status, saga = pcall(require, 'saga')
local lsp_installer_status, lsp_installer = pcall(require, 'nvim-lsp-installer')
local cmp_status_ok, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')

if not (lspconf_status and saga_status and lsp_installer_status and cmp_status_ok) then
	return
end


lsp_installer.setup({
	automatic_installation = true
})
