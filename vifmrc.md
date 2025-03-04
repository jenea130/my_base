:file <cr> l # выбор программы для просмотра

" Open file in the background using its default program
nnoremap gb :file &<cr>l

" Yank current directory path into the clipboard
nnoremap yd :!echo %d | xclip %i<cr>

" Yank current file path into the clipboard
nnoremap yf :!echo %c:p | xclip %i<cr>

" zip
fileviewer {*.zip}
        \ unzip -l %f,

filextype {*.md}
        \ glow %f,
        \ nvim %f,
        \ vim %f,

fileviewer {*.md}
        \ glow %f,

fileviewer *.html,*.go,*.css,*.c highlight -O xterm256 -s dante %c
fileviewer *.md highlight -O xterm256 --syntax markdown

nnoremap s :shell<cr>

nnoremap ,t :!st &<cr>

nnoremap <c-j> <cr>
cnoremap <c-j> <cr>

nnoremap ,x :!sxiv -tr %d<cr>
nnoremap ,v :file <cr>
nnoremap ,s :!smplayer %c<cr>
nnoremap ,h :history <cr>

nnoremap ,f :FZFfind<cr>
nnoremap ,ff :!nvim $(fzf)<cr>

