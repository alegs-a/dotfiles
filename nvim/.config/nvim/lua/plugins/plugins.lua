return {
    { "tpope/vim-fugitive" },
    { "lewis6991/gitsigns.nvim" },

    { "christoomey/vim-tmux-navigator" },

    { "akinsho/toggleterm.nvim" },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/cmp-nvim-lsp" }, -- Necessary for nvim-cmp
    { "hrsh7th/cmp-buffer" }, -- Necessary for nvim-cmp
    { "hrsh7th/cmp-path" }, -- Necessary for nvim-cmp
    { "hrsh7th/cmp-cmdline" }, -- Necessary for nvim-cmp
    { "saadparwaiz1/cmp_luasnip" }, -- Necessary for nvim-cmp
    { "L3MON4D3/LuaSnip" }, -- Necessary for nvim-cmp
    -- use("rafamadriz/friendly-snippets")
    { "hrsh7th/nvim-cmp" },
    
    { "mhartington/formatter.nvim" },
    
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    },
    
    { "lervag/vimtex" },
    
    { "lvimuser/lsp-inlayhints.nvim" },
    
    -- Colorschemes
    { "ellisonleao/gruvbox.nvim" },
    
    { "MrcJkb/haskell-tools.nvim" },
}
