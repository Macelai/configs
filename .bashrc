#
# ~/.bashrc
# alias.sh

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
shopt -s expand_aliases

alias ls='ls --color=auto'
alias cd=cdls
alias c='clear'
alias update='sudo pacman -Syu'

alias rm='rm -i'
alias mv='mv -i'

alias xau='shutdown now'
alias rr='shutdown -r 0'

function cdls {
	builtin cd "$@" && ls
}

export PS1="\[\033[38;5;160m\]\u@\h\[$(tput sgr0)\]\[\033[38;5;15m\]:[\[$(tput sgr0)\]\[\033[38;5;160m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]]: \[$(tput sgr0)\]"
