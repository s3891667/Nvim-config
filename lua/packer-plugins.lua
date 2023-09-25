return require('packer').startup(function()
	--packer
	use 'wbthomason/packer.nvim'

	--autopairs
	use 'jiangmiao/auto-pairs'
	--copy 	
	use 'erickzanardo/vim-xclip'

	--color
	use 'gruvbox-community/gruvbox'


	--display git information
	use {
		'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup()
		end
	}

	--catppuccin colorscheme
	use {
		"catppuccin/nvim",
		as = "catppuccin",
		config = function()
			vim.api.nvim_command "colorscheme catppuccin"
			--vim.api.nvim_command "colorscheme nord"
		end
	}

	--syntax highlighting
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
	}

	--files tree
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly',  -- optional, updated every week. (see issue #1193)
	}

	--terminal in vim

	use { "akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup {
			size = 20,
			open_mapping = [[<c-\>]],
			direction = "float",
			float_opts = {
				border = "curved",
				winblend = 0,
			}
		}
	end }

	--auto tag for ts
	use 'windwp/nvim-ts-autotag'


	--nvim telescope
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	--tmux
	use({
		"aserowy/tmux.nvim",
		config = function() return require("tmux").setup() end
	})

	--LSP
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' }, -- Required
			{ 'williamboman/mason.nvim' }, -- Optional
			{ 'williamboman/mason-lspconfig.nvim' }, -- Optional

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' }, -- Required
			{ 'hrsh7th/cmp-nvim-lsp' }, -- Required
			{ 'L3MON4D3/LuaSnip' }, -- Required
		}
	}
	--switching like gods 
	use 'ThePrimeagen/harpoon'

	use {
	  "rest-nvim/rest.nvim",
	  requires = { "nvim-lua/plenary.nvim" },
	}


end)
