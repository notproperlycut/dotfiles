set nocompatible
set paste
syntax enable
filetype on
filetype indent on
filetype plugin on
set sessionoptions-=options
nnoremap Q <nop>
set wildmode=list:longest,full

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent  
set smartindent
set copyindent

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'sheerun/vim-polyglot'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'nvie/vim-flake8'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'heavenshell/vim-prettier'
Plug 'alampros/vim-styled-jsx'
Plug 'dleonard0/pony-vim-syntax'

" Plug 'ludovicchabant/vim-gutentags'
let g:gutentags_cache_dir = '~/.tags_cache'

" Plug 'neomake/neomake'
" autocmd! BufWritePost * Neomake
" autocmd! BufReadPost * Neomake

" command Errors lopen

" Add plugins to &runtimepath
call plug#end()
