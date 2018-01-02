[[ $- != *i* ]] && return

# settings

set -o vi
export EDITOR='vi'
export VISUAL='vi'
export PAGER="less -RS"

export LESSHISTFILE=/dev/null

# PS1

PS1='\u@\h \W\$ '

# aliases

alias ls='ls --color=auto'
alias l='ls -lah'
alias la='ls -lah'

alias less='less --color=auto'
alias grep='grep --color=auto'

alias ..='cd ..'
alias ...='cd ../..'

alias vi='vim'
alias o='xdg-open'

# source machine specific config

. ~/.config/bashrc
