-- Autocommand that reloads neovim whenever you save the packer_init.lua file
vim.cmd [[
	augroup packer_user_config
	autocmd!
	autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
	return
end

-- Install plugins
return packer.startup(function(use)
	-- Add you plugins here:
	use 'wbthomason/packer.nvim' -- packer can manage itself
	use {
		'lewis6991/impatient.nvim', -- improve load plugins speed
		config = function()
			require('impatient').enable_profile()
		end
	}

	-- Clipboard
	use 'ojroques/vim-oscyank'

	-- Indent line
	use 'lukas-reineke/indent-blankline.nvim'


	-- Highlight current word
	use 'RRethy/vim-illuminate'

	-- Comment
	use {
	'numToStr/Comment.nvim',
	config = function()
			require('Comment').setup()
		end
	}

	-- Autopair
	use {
		'windwp/nvim-autopairs',
		config = function()
			require('nvim-autopairs').setup()
		end
	}

	-- Color schemes
	-- use 'navarasu/onedark.nvim'
	use 'ellisonleao/gruvbox.nvim'

	-- Status and Tab lines
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- File explorer
	use 'kyazdani42/nvim-tree.lua'

	-- Tag viewer (requires ctags)
	use 'preservim/tagbar'

	-- Move text in visual mode (any how: hor/vert)
	use 'matze/vim-move'

	-- LSP
	use {
		'williamboman/nvim-lsp-installer',
		'onsails/lspkind.nvim',
		'neovim/nvim-lspconfig',
	}

	-- Treesitter
	use 'nvim-treesitter/nvim-treesitter'

	-- Autocomplete
	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-nvim-lsp-signature-help',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-buffer',
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
			'rafamadriz/friendly-snippets',
		},
	}

	-- Git labels
	use {
		'lewis6991/gitsigns.nvim',
		requires = { 'nvim-lua/plenary.nvim' },
		config = function()
			require('gitsigns').setup()
		end
	}

	-- Keymaps suggestions
	use 'folke/which-key.nvim'

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim',
		requires = {'nvim-lua/plenary.nvim'},
	}

	-- Better escape (jk, jj)
	use {
		'max397574/better-escape.nvim',
		config = function()
			require("better_escape").setup()
		end,
	}

	-- Color highlight
	use {
		'NvChad/nvim-colorizer.lua',
		config = function()
			require("colorizer").setup()
		end,
	}


	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require('packer').sync()
	end
end)

