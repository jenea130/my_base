alias fn='nvim $(fzf)'
alias pac='sudo pacman'

lgit() {
    git add .
    git commit -m "$*"
    git push
}

tran() {
    trans en:ru --speak "$*"
}

tra() {
    trans -b --speak en:ru "$*"
}

rsvg(){
  rsvg-convert -a -w "$1" -f svg "$2".svg -o "$2"-"$1".svg
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=~/bin:$PATH

function gitRestore(){
  git restore .
  git clean -f   
  git clean -df
}

// plugins
git
z
fzf
zsh-autosuggestions
zsh-syntax-highlighting

eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
