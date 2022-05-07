-- Automatically install packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({
		'git', 'clone', '--depth', '1',
		'https://github.com/wbthomason/packer.nvim',
		install_path
	})
end

-- Autocommand that reloads neovim whenever you save the packer_init.lua file
vim.cmd [[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost packer_init.lua source <afile> | PackerSync
	augroup end
]]

