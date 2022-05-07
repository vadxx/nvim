local status_ok, nvim_treesitter = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
  return
end

-- See: https://github.com/nvim-treesitter/nvim-treesitter#quickstart
nvim_treesitter.setup {
  -- A list of parser names, or "all"
  ensure_installed = {
    'bash', 'lua', 'c', 'cpp', 'python', 'json'
  },
  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

	highlight = { enable = true },
	indent = { enable = true },
	autotag = { enable = true },
	autopairs = { enable = true },
}
