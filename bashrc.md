#PS1='[\u@\h \W]\$ '
PS1='\033[1;32m[\u@\h \033[1;37m\W\033[1;32m]\$ \033[0m'

----------------------

alias ls='ls --color=auto'
alias pacman='pacman --color=auto'

#green="\[$(tput setaf 2)\]"
#white="\[$(tput setaf 7)\]"
#reset="\[$(tput sgr0)\]"
green="\[\033[1;92m\]"
white="\[\033[1;37m\]"
reset="\[\033[0m\]"

#PS1='[\u@\h \W]\n\$ '
#PS1='[\u@\h \W]\$ '
#PS1='\e[1;32m[\u@\h \e[1;37m\W\e[1;32m]\$ \e[0m'
#PS1="${green}[\u@\h ${white}\W${green}\$ ${reset}"
PS1="${green}[\u@\h ${white}\W${green}]\$ ${reset}"

tran() {
	trans en:ru -speak "$1"
}

tra() {
	trans -b -speak en:ru "$1"
}

verb() {
	curl -s https://english-verbs.ru/search?query="$1" | awk -F: '/Infinitive/ {print $2}' | grep "($1)" | awk -F. '{print $1}'
}

#The next line updates PATH for Yandex Cloud CLI.
#if [ -f '/home/first/yandex-cloud/path.bash.inc' ]; then source '/home/first/yandex-cloud/path.bash.inc'; fi

#The next line enables shell command completion for yc.
#if [ -f '/home/first/yandex-cloud/completion.bash.inc' ]; then source '/home/first/yandex-cloud/completion.bash.inc'; fi





