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
map('n', ';', ':') 

-- Move text in Visual mode
map('v', '<', '<gv') 
map('v', '>', '>gv') 

-- Easy hor and ver windows
map('n', ';h', ':vsplit<CR>') 
map('n', ';v', ':split<CR>') 

map('n', ';t', ':tabnew<CR>') 
map('n', '<S-Tab>', ':tabprev<CR>') 
map('n', '<Tab>', ':tabnext<CR>') 

-- Clear search highlighting with <leader> and c
map('n', '<leader>c', ':nohl<CR>')

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>')
map('i', '<leader>s', '<C-c>:w<CR>')

-- Close all windows and exit from Neovim with <leader> and q
map('n', '<leader>q', ':qa!<CR>')


-- Apps and Plugins
-- NvimTree
map('n', '<C-n>', ':NvimTreeToggle<CR>')            -- open/close
map('n', '<leader>f', ':NvimTreeRefresh<CR>')       -- refresh
map('n', '<leader>n', ':NvimTreeFindFile<CR>')      -- search file

-- Tagbar
-- map('n', '<leader>z', ':TagbarToggle<CR>')          -- open/close

