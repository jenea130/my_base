.vimrc for vscode

Copy paste between vim and everything else
set clipboard=unnamedplus

set scrolloff=7

set relativenumber

let g:sneak#label = 1

map <CR> o<Esc>

-----------------------------------------

Ctrl+Shift+P Emmet:wrap with abbreviattion

------------------------------------------

CSS Peek
-- go defenision F12 from html to css

Live Server
-- Alt+L Alt+O

Html Preview
-- Ctrl+K V

--------------------------------------------

### import export extensions

On the old machine:
code --list-extensions > vscode-extensions.list

On the new machine:
cat vscode-extensions.list | xargs -L 1 code --install-extension

---------------------------------------------