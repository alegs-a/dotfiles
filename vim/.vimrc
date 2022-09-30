syntax on
set background=dark
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set encoding=utf-8
set number
set ttimeoutlen=10
set foldmethod=indent

call plug#begin()
Plug 'lervag/vimtex'
Plug 'ycm-core/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-fugitive'
Plug 'gisraptor/vim-lilypond-integrator'
Plug 'altercation/vim-colors-solarized'
Plug 'sainnhe/everforest'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'Raimondi/delimitMate'
Plug 'jmcantrell/vim-virtualenv'
call plug#end()

if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif
au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme

" vimtex options
let g:vimtex_view_method='skim'
let g:vimtex_syntax_conceal_disable=1

" Auto-populate airline_powerline_fonts with correct unicode symbols
let g:airline_powerline_fonts=1

nmap H ^
nmap L $
nmap j gj
nmap k gk

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <F5> :wa<CR>:vertical botright term ++kill=term<CR>
" nnoremap <F2> <Esc>:w<CR>:!clear;python3 %<CR>

" Needs to be called after plugins are loaded I think; causes problems if it's
" at the top
colorscheme everforest
