return require('packer').startup(function(use)
	-- Configurations will go here
	use 'wbthomason/packer.nvim'
	use 'williamboman/mason.nvim'   
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'  

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use ({
		'Mofiqul/dracula.nvim',
		as = 'dracula',
		config = function()
			vim.cmd('colorscheme dracula')
		end
	})

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	-- Hrsh7th Code Completion Suite
	use 'hrsh7th/nvim-cmp' 
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	-- use 'hrsh7th/cmp-vsnip'                             
	use 'hrsh7th/cmp-path'                              
	use 'hrsh7th/cmp-buffer'                            
	-- use 'hrsh7th/vim-vsnip'

	-- File explorer tree
	use {
		'nvim-tree/nvim-tree.lua'
	}
end)


