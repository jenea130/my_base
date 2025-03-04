bat --list-themes | fzf --preview="bat --theme={} --color=always ./filename"

bat --theme=dracula ./filename
