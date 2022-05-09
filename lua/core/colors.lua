-- Load nvim color scheme
-- Available: onedark, gruvbox
local theme = 'gruvbox'

local status_ok, color_scheme = pcall(require, theme)
if not status_ok then
	return
end

-- OneDark styles: dark, darker, cool, deep, warm, warmer, light
if theme == 'onedark' then
	color_scheme.setup {
	style = 'dark',
	colors = { fg = '#b2bbcc' } , --default: #a0a8b7
	}
end
color_scheme.load()

-- statusline color schemes:
-- import with: require('colors').colorscheme_name
local M = {}

