:map <F7> :w !xclip<CR><CR>
:vmap <F7> "*y
:map <S-F7> :r!xclip -o<CR>


vmap <F6> :!xclip -f -sel clip<CR>
map <F7> :-lr !xclip -o -sel clip<CR>

map <F7> mz:-lr !xclip -o sel clip<CR>`z


.vimrc

vmap <leader>xb :!xclip -f -sel clip<CR>
vmap <leader>xp :!xclip -f <CR>
map <leader>xpp mz:-lr !xclip -o -sel clip<CR>`z

vmap <leader>xtt :!tmux set-buffer<CR>


---------------------------------------
let wordUnderCursor = expand("<cword>")
let currentLine   = getline(".")

function Strline()
    let line = strcharlen(getline("."))
    let @+ = line
    return line
endfunction


function Strword()
    let word = strcharlen(expand("<cword>"))
    let @+ = word
    return word
endfunction


:echo Strline()
