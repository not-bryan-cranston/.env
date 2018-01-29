[[ $- != *i* ]] && return

# settings

export HISTCONTROL=ignoreboth

set -o vi
export EDITOR='vi'
export VISUAL='vi'
export PAGER="less -RS"

export LESSHISTFILE=/dev/null

# PS1

RST="\[\e[m\]"
BOLD="\[\e[1m\]"
GRN="\[\e[32m\]"
BLUE="\[\e[34m\]"

PS1=$BOLD$GRN'\u@\h'$RST':'$BOLD$BLUE'\w'$RST'\$ '

# aliases

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias less='less -RS'

alias l='ls -lah'
alias la='ls -a'
alias ll='l --color=always | less'

alias ps='ps -efjH'
alias psg='ps | grep'
alias c='xclip -selection clipboard'

alias ..='cd ..'
alias ...='cd ../..'

alias vi='vim'
alias o='xdg-open'

# vars

WIRELESS_INTERFACE="$(iw dev | grep Interface | cut -d ' ' -f 2)"

# source machine specific config

. $HOME/.config/bashrc
