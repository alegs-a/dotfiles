vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.foldmethod = 'indent'
vim.opt.signcolumn = 'yes'

vim.opt.hlsearch = false

-- Make sure Packer is installed; if not, then install it
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()


require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
    use('tpope/vim-fugitive')
    use('lewis6991/gitsigns.nvim')

    use('christoomey/vim-tmux-navigator')

    use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

    use {
        'kyazdani42/nvim-tree.lua',
        requires = { 'kyazdani42/nvim-web-devicons', } -- optional, for file icons 
    }

    use {'neoclide/coc.nvim', branch = 'release'}

    -- Colorschemes
    use('ellisonleao/gruvbox.nvim')

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)

require('lualine').setup()
require('gitsigns').setup()

require('nvim-tree').setup()
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>')

vim.cmd('colorscheme gruvbox')

-- CoC config
-- Use <TAB> to trigger completion
vim.cmd([[
    inoremap <silent><expr> <TAB>
          \ coc#pum#visible() ? coc#pum#next(1) :
          \ CheckBackspace() ? "\<Tab>" :
          \ coc#refresh()
    inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
]])
-- Use <CR> to accept completion
vim.cmd([[
    inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                          \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
]])
