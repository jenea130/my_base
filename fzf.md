fzf --preview='cat {}'

nvim $(fzf --preview='cat {}')
nvim $(fzf --preview='bat --color=always {}')
