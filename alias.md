alias jall='jpegoptim --strip-all --all-progressive -ptm 80 *.jpg' 
alias bp='xsel -b | xsel -p'
alias pb='xsel -p | xsel -b'
alias xcolor="xcolor | xsel -b --trim"
alias fs8='sudo fuser -k 80/tcp && echo 'Terminated' || echo 'Nothing was running on the 80''
alias fn='nvim $(fzf)'
alias fb='bat $(fzf)'
alias fv='vim $(fzf)'
alias glw='glow -p $(fzf)'

