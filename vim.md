set spell
set spelllang=ru_ru
set spelllang=en_us, ru_ru


vsplit
split
vertical resize 20
resize 20

-----------

:terminal
:term
:vert term

-----------


tabedit file.txt
vim -p file1.txt file2.txt


:Explore
:Lex
:Lex!
:Hex
:Sex

----------

set cursorline
set cursorcolumn

-----------

set showbreak=\\\\\\>

-----------

set clipboard+=unnamed

-----------

let mapleader=","

-----------

set pastetoggle=<F2>

----------o

autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType python setlocal expandtab tabstop=4 shiftwidth=4

----------

'<,'>!xclip -sel clip

----------

noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Up> :resize +3<CR>


----------

set foldmethod=manual
set fmd

zf - create fold
zo - open fold
zc - close fold
zd - delete fold

zj - go to the next fold
zk - go to the previous fold

:10,15fold
:,+10 fo

zfa{ - fold text in {}

zn - open all folds
zN - set all folds as they were before
zE - eliminate all folds

:10,25 foldopen
:10,25 foldclose

:% foldopen

[z - go to the top of the current fold

.vim/view
:mkview
:loadview

" lines to save text folding
" .vimrc
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

---------------

set rnu!

----------------

set autoread

----------------

set relativenumber

----------------
