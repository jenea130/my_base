set keymap=russian-jcukenwin

set iminsert=0
set imsearch=0

set ignorecase
set smartcase

set hlsearch
set incsearch

inoremap <C-l> <C-^>

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

colo elflord
syn on
set number

let mapleader = ","

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

inoremap jj <ESC>
nnoremap nm :nohls<CR>
