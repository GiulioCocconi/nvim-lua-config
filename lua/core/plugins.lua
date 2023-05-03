local utils = require("core.utils")

local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

local packer_bootstrap = nil

if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
	use "wbthomason/packer.nvim"

	use 'nathom/filetype.nvim' --Faster load time

	use {
		'karb94/neoscroll.nvim', --Smoother scroll
		event = { "BufRead", "BufNewFile" }
	}

	use {
		'stevearc/dressing.nvim', --UIs improvements
		event = "BufWinEnter",
	}

	use 'kyazdani42/nvim-web-devicons' --for file icons

	use 'moll/vim-bbye' --closes buffers

	use {
		'gelguy/wilder.nvim',
		run = require('core.utils').update_remote_plugins,
		config = [[ vim.cmd("call wilder#setup({'modes': [':', '/', '?']})") ]]
	}

	use {
		'lambdalisue/suda.vim', --Write files using `sudo`
		cmd = { "SudaRead", "SudaWrite" }
	}


	use 'majutsushi/tagbar' --Tags manager
	use {
		'windwp/nvim-autopairs',
		config = [[ require('nvim-autopairs').setup{} ]]
	}

	use {
		'numToStr/Comment.nvim', --Comment more line of code with one keystroke
		event = { "BufRead", "BufNewFile" },
		config = [[ require("Comment").setup() ]]
	}
	use 'voldikss/vim-floaterm' --Floating term and windows manager
	use 'embear/vim-localvimrc' --Load local config in working directory
	use {
		'kyazdani42/nvim-tree.lua', --Tree of project files
		--cmd = 'NvimTreeToggle',
		config = [[ require("plugins.tree").config() ]]
	}
	use 'mg979/vim-visual-multi' --Multicursor

	--Greeter
	use {
		'glepnir/dashboard-nvim',
		event = 'VimEnter',
		 config = [[ require("plugins.dashboard").config() ]]
	}

	use {
		'nvim-telescope/telescope.nvim',
		requires =  {'nvim-lua/plenary.nvim'},
		config = [[ require("plugins.telescope").config() ]]
	}

	use {
		'ggandor/lightspeed.nvim',
		requires = {'tpope/vim-repeat'}
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		config = [[ require("plugins.treesitter").config() ]]
	}

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
				'williamboman/mason.nvim',
				run = function()
					vim.cmd('MasonUpdate')
				end,
			},
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		},
		config = [[ require("plugins.lsp").config() ]]

	}

	-- Theme
	use {
		"drewtempelmeyer/palenight.vim",
		requires = { "vim-airline/vim-airline" },
		config = [[ require("plugins.theme").config() ]]
	}

	if utils.isLangActive("haskell") then
		use "neovimhaskell/haskell-vim"
	end

	if packer_bootstrap then
		print("Installing plugins...")
		require('packer').sync()
	end
end)

