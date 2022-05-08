local augroup = vim.api.nvim_create_augroup	-- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd	-- Create autocommand

-- Highlight on yank
augroup('YankHighlight', { clear = true })
autocmd('TextYankPost', {
	group = 'YankHighlight',
	callback = function()
		vim.highlight.on_yank({ higroup = 'IncSearch', timeout = '1000' })
	end
})

autocmd('TextYankPost', {
	pattern = '*',
	command = "if v:event.operator is 'y' && v:event.regname is '' | execute 'OSCYankReg +' | endif"
})

-- Don't auto commenting new lines
autocmd('BufEnter', {
	pattern = '*',
	command = 'set fo-=c fo-=r fo-=o'
})
