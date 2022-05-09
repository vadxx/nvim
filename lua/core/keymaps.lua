local function map(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend('force', options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Default leader is '\'
-- Change leader to a comma
-- vim.g.mapleader = ','

-- Easy run vim promt
map('', ';', ':')

-- Move text in Normal and Visual mode
map('', '<', '<<')
map('', '>', '>>')

-- Easy hor and ver windows
map('n', ';h', ':split<cr>')
map('n', ';v', ':vsplit<cr>')

map('n', ';t', ':tabnew<cr>')
map('n', '<S-Tab>', ':tabprev<cr>')
map('n', '<Tab>', ':tabnext<cr>')

-- Apps and Plugins
-- NvimTree
map('n', '<C-n>', ':NvimTreeToggle<cr>')	-- open/close

-- Other keymaps are located in ../configs/whichkey.lua
