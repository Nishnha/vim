syntax on
filetype plugin indent on
:nohlsearch

set t_Co=256
set termguicolors
colorscheme gruvbox
set background=dark
set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc
set guifont=Fira\ Mono\ for\ Powerline:h11
let Powerline_symbols = 'fancy'
set mouse=a
set number
set noshowmode
set nocompatible
set incsearch
set smarttab
set autoindent
set spell
set linebreak
set cursorline
set title
set wrap
set expandtab
set ignorecase
set smartcase
set hlsearch
set showmatch
retab

" PLUGINS
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rlue/vim-fold-rspec'
Plug 'github/copilot'
call plug#end()

" This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

" Remap jj to insert mode
inoremap jj <Esc>
