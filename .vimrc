syntax on

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set relativenumber
set nu
set noerrorbells
set nowrap

set incsearch
set nohlsearch

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set scrolloff=15

packadd! dracula
syntax enable
colorscheme dracula
hi! Normal ctermbg=NONE
