syntax on

set nocompatible                                        " really don't know what this line does, but a lot of folks were using it back in 2008
filetype on                                             " identify the file extension

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent autoindent

set relativenumber
set nu
set noerrorbells
set nowrap
set signcolumn=yes

set incsearch
set nohlsearch
set ignorecase
set smartcase                                           " case sensitive only when searching with capital letter

set showmatch                                           " show matching bracket
set showtabline=2                                       " show tabline even when there's only one file

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set scrolloff=15
set sidescrolloff=15
set updatetime=100

set list
set listchars=tab:>·,trail:·                            " place a dot when is lost space and the line below removes them
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

set wildmenu                                            " increment :e to search and open a file
set ttyfast                                             " smoothness

packadd! dracula
syntax enable
colorscheme dracula
hi! Normal ctermbg=NONE

set cul                                                 " highlight current line
hi cursorline term=none cterm=none ctermbg=234

nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>

autocmd VimEnter * nmap <F3> :NERDTreeToggle<CR>
autocmd VimEnter * imap <F3> <Esc>:NERDTreeToggle<CR>a
let NERDTreeQuitOnOpen=1
let NERDTreeWinSize=35

let g:polyglot_disabled = ['autoindent']
let g:polyglot_disabled = ['sensible']
let g:polyglot_disabled = ['ftdetect']
