local status_ok, wk = pcall(require, 'which-key')
if not status_ok then
	return
end

wk.register({
  f = {
    name = "file", -- optional group name
    f = { "<cmd>Telescope find_files<cr>", "Find File" }, 
		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File"},
  },
}, { prefix = "<leader>" })


wk.setup {}
