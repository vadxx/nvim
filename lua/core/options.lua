local g = vim.g		-- Global variables
local o = vim.opt	-- Set options (global/buffer/windows-scoped)

-- General
o.mouse = 'a'
o.clipboard = 'unnamedplus'
o.swapfile = false
o.completeopt = 'menuone,noinsert,noselect'

-- UI
o.number = true
o.showmatch = true
o.showmode = false
o.laststatus = 3
o.linebreak = true
o.termguicolors = true

o.list = true
o.listchars:append("space:⋅")

-- Search
o.ignorecase = true	-- Ignore case letters when search
o.smartcase = true	-- Ignore lowercase for the whole pattern
o.linebreak = true	-- Wrap on word boundary

-- Tabs,  indent
o.shiftwidth = 2 
o.tabstop = 2 

-- Language specific
g.python_recommended_style = 0

-- Performance
o.hidden = true			-- Enable background buffers
o.history = 100			-- Remember N lines in history
o.lazyredraw = true	-- Faster scrolling
o.synmaxcol = 240		-- Max column for syntax highlight
o.updatetime = 700	-- ms to wait for trigger an event

-- Startup
o.shortmess:append "sI"

-- Disable builtins plugins
local disabled_built_ins = {
	"netrw",
	"netrwPlugin",
	"netrwSettings",
	"netrwFileHandlers",
	"gzip",
	"zip",
	"zipPlugin",
	"tar",
	"tarPlugin",
	"getscript",
	"getscriptPlugin",
	"vimball",
	"vimballPlugin",
	"2html_plugin",
	"logipat",
	"rrhelper",
	"spellfile_plugin",
	"matchit"
}
for _, plugin in pairs(disabled_built_ins) do
	g["loaded_" .. plugin] = 1
end
