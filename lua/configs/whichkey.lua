local status_ok, wk = pcall(require, 'which-key')
if not status_ok then
	return
end

wk.register({
	-- Telescope
  f = {
    name = "File", -- optional group name
    f = { "<cmd>Telescope find_files<cr>", "Find File" },
		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File"},
		w = { "<cmd>Telescope live_grep<cr>", "Search in current dir"},
  },
	-- Core
	q = { ":qa!<cr>", "Close all windows and exit"},
	c = { ":nohl<cr>", "Clear search highlighting" },
	r = { ":so %<cr>", "Reload configuration without restart" },
	-- LSP
	--g = {
	--	name = "LSP",
  --  r = { "<cmd>Telescope lsp_references<cr>", "References" },
  --  w = { "<cmd>Telescope diagnostics<cr>", "Diagnostics" },
	-- }
	-- TODO
}, { prefix = "<leader>" })


wk.setup {}
