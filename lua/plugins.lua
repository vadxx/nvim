-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Install plugins
return packer.startup(function(use)
	-- Add you plugins here:
	use 'wbthomason/packer.nvim' -- packer can manage itself

	-- Indent line
	use 'lukas-reineke/indent-blankline.nvim'

	-- Autopair
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end
 	} 

	-- Icons
	use 'kyazdani42/nvim-web-devicons'
	-- Color schemes
	use 'navarasu/onedark.nvim'

	-- Status and Tab lines
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	--use {'beauwilliams/statusline.lua',
		--requires = { 'kyazdani42/nvim-web-devicons' },	
	--}

	-- File explorer
  use 'kyazdani42/nvim-tree.lua'

	-- Tag viewer
  -- use 'preservim/tagbar'

	-- LSP
	use {
  	"williamboman/nvim-lsp-installer",
  	"neovim/nvim-lspconfig",
	}
	-- Autocomplete
	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'L3MON4D3/LuaSnip',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-buffer',
			'saadparwaiz1/cmp_luasnip',
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

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require('packer').sync()
	end
end)