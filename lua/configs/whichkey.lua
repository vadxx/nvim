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
	t = {
		name = "Theme",
		b = { ":let &background = ( &background == \"dark\"? \"light\" : \"dark\" )<cr>", "Toggle light/dark background" },
	},
	-- Core
	q = { ":qa!<cr>", "Close all windows and exit"},
	w = { ":w<cr>", "Save changes in current file"},
	c = { ":nohl<cr>", "Clear search highlighting" },
	r = { ":so %<cr>", "Reload configuration without restart" },
	-- LSP
	K = { "<cmd>lua vim.lsp.buf.hover()<cr>", "Hover (LSP)" },
	C = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code action (LSP)"},
	R = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename (LSP)"},
	E = { "<cmd>Telescope diagnostics<cr>", "Diagnostics (LSP)" },
	g = {
		name = "Goto (LSP)",
		h = { "<cmd>lua vim.lsp.buf.references()<cr>", "References" },
		d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Peek Definition" },
		i = { "<cmd>lua vim.lsp.buf.implementation()<cr>", "Goto Implementation" } ,
		s = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help" } ,
	},
}, { prefix = "<leader>" })

wk.register({
	name = "Convert spaces to tabs",
	["2"] = { ":%s#\\s\\s#\\t#g<cr>:noh<cr>", "Conv 2 spaces to tab in file"},
	["4"] = { ":%s#\\s\\s\\s\\s#\\t#g<cr>:noh<cr>", "Conv 4 spaces to tab in file"},
}, { prefix = "<leader>=" })

