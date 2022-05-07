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

-- Move text in Visual mode
map('', '<', '<gv') 
map('', '>', '>gv') 

-- Easy hor and ver windows
map('n', ';h', ':vsplit<CR>') 
map('n', ';v', ':split<CR>') 

map('n', ';t', ':tabnew<CR>') 
map('n', '<S-Tab>', ':tabprev<CR>') 
map('n', '<Tab>', ':tabnext<CR>') 

-- Apps and Plugins
-- NvimTree
map('n', '<C-n>', ':NvimTreeToggle<CR>')            -- open/close

-- Tagbar
-- map('n', '<leader>z', ':TagbarToggle<CR>')          -- open/close

