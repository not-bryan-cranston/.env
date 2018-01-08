[[ $- != *i* ]] && return

# settings

export HISTCONTROL=ignoreboth

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
alias la='ls -a'

alias grep='grep --color=auto'
alias ps='ps -efjH'
alias psg='ps | grep'
alias c='xclip -selection clipboard'

alias ..='cd ..'
alias ...='cd ../..'

alias vi='vim'
alias o='xdg-open'

# source machine specific config

. ~/.config/bashrc
