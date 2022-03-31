local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()
	use "wbthomason/packer.nvim"

	use 'nathom/filetype.nvim' --Faster load time
	use 'karb94/neoscroll.nvim' --Smoother scroll
	use 'kyazdani42/nvim-web-devicons' --for file icons
	use 'moll/vim-bbye' --closes buffers
	use {
		'gelguy/wilder.nvim',
		config = [[vim.cmd("call wilder#setup({'modes': [':', '/', '?']})")]]
	}
	use 'lambdalisue/suda.vim' --Write files using `sudo`


	use 'godlygeek/tabular' --Line up text
	use 'majutsushi/tagbar' --Tags manager
	use 'jiangmiao/auto-pairs'
	use {
		'numToStr/Comment.nvim', --Comment more line of code with one keystroke
		config = 'require("Comment").setup()'
	}
	use 'voldikss/vim-floaterm' --Floating term and windows manager
	use 'embear/vim-localvimrc' --Load local config in working directory
	use {
		'kyazdani42/nvim-tree.lua',
		cmd = ':NvimTreeToggle',
		config = 'require("plugins.tree").config()'
	} --Tree of project files
	use 'mg979/vim-visual-multi' --Multicursor
	use 'rhysd/devdocs.vim'

	--Greeter
	use {
		'glepnir/dashboard-nvim',
		config = 'require("plugins.dashboard").config()'
	}

	use {
		'nvim-telescope/telescope.nvim',
		requires =  {'nvim-lua/plenary.nvim'},
		config = 'require("plugins.telescope").config()'
	}


	-- Completion
	use { 
		'neoclide/coc.nvim',
		branch = 'release',
		run = 'require("plugins.coc").setup()',
		config = 'require("plugins.coc").config()',
		requires = {
			'SirVer/ultisnips',
			requires = { 'honza/vim-snippets' },
			config = 'require("plugins.snips").config'
		}
	}

	-- Theme
	use {
		"sonph/onehalf",
		rtp = "vim",
		requires = { "vim-airline/vim-airline" },
		config = [[ require("plugins.theme").config() ]]
	}


	if packer_bootstrap then require('packer').sync() end
end)