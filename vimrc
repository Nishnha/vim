" BASIC DEFAULTS
execute pathogen#infect()
syntax on
filetype plugin indent on

" USER CONFIG
:nohlsearch
set t_Co=256
colorscheme gruvbox
set background=dark
set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc
set guifont=Fira\ Mono\ for\ Powerline:h11
let Powerline_symbols = 'fancy'
"set guifontwide=NSimsun:h12
set mouse=a
set number
set incsearch
set smarttab
set autoindent
"set spell
set linebreak
set cursorline
set title
set laststatus=2
set wrap
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set ignorecase
set smartcase
set hlsearch
set showmatch
retab

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

"remap jj to insert mode
inoremap jj <Esc>

"automatically delete whitespace for filetypes at save
autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> :%s/\s\+$//e

let g:airline_powerline_fonts = 1
let g:airline#estensions#tabline#enabled = 1
let g:nerdtree_tabs_open_on_console_startup=1

" NERD TREE CONFIG
autocmd vimenter * NERDTree

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"set cursor to start in main window
autocmd VimEnter * wincmd p

map <C-n> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
