-- Make sure Packer is installed; if not, then install it
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer()

require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use({ "nvim-telescope/telescope.nvim", tag = "0.1.4", requires = { { "nvim-lua/plenary.nvim" } } })

	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("tpope/vim-fugitive")
	use("lewis6991/gitsigns.nvim")

	use("christoomey/vim-tmux-navigator")

	use("akinsho/toggleterm.nvim")

	use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons", opt = true } })

	use("williamboman/mason.nvim")
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp") -- Necessary for nvim-cmp
	use("hrsh7th/cmp-buffer") -- Necessary for nvim-cmp
	use("hrsh7th/cmp-path") -- Necessary for nvim-cmp
	use("hrsh7th/cmp-cmdline") -- Necessary for nvim-cmp
	use("saadparwaiz1/cmp_luasnip") -- Necessary for nvim-cmp
	use({ -- Necessary for nvim-cmp
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		tag = "v<CurrentMajor>.*",
		-- install jsregexp (optional!:).
		run = "make install_jsregexp",
	})
	-- use("rafamadriz/friendly-snippets")
	use("hrsh7th/nvim-cmp")
	--            Leftovers from lsp-zero
	--            I may use some of these again, but for now they're dead to me >:)
	--            -- LSP Support
	--            ,
	--            ,
	--            {'williamboman/mason-lspconfig.nvim'},
	--
	--            -- Autocompletion
	--            {''},
	--            {'hrsh7th/cmp-buffer'},
	--            {'hrsh7th/cmp-path'},
	--            {'saadparwaiz1/cmp_luasnip'},
	--            {'hrsh7th/cmp-nvim-lsp'},
	--            {'hrsh7th/cmp-nvim-lua'},
	--
	--            -- Snippets
	--            {'L3MON4D3/LuaSnip'},
	--            {'rafamadriz/friendly-snippets'},

	use("mhartington/formatter.nvim")

	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	use("lervag/vimtex")

	use("lvimuser/lsp-inlayhints.nvim")

	-- Colorschemes
	use("ellisonleao/gruvbox.nvim")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
