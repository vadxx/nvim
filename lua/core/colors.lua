-- Load nvim color scheme
local status_ok, color_scheme = pcall(require, 'onedark')
if not status_ok then
  return
end

-- OneDark styles: dark, darker, cool, deep, warm, warmer, light
require('onedark').setup {
  style = 'dark',
	colors = { fg = '#b2bbcc' } , --default: #a0a8b7
}
require('onedark').load()

-- statusline color schemes:
-- import with: require('colors').colorscheme_name
local M = {}

