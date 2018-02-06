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

alias diskspace='df -h'
alias dirspace='du -sh *'

# functions

# SYNOPSIS
#   manopt command opt
#
# DESCRIPTION
#   Returns the portion of COMMAND's man page describing option OPT.
#   Note: Result is plain text - formatting is lost.
#
#   OPT may be a short option (e.g., -F) or long option (e.g., --fixed-strings);
#   specifying the preceding '-' or '--' is OPTIONAL - UNLESS with long option
#   names preceded only by *1* '-', such as the actions for the `find` command.
#
#   Matching is exact by default; to turn on prefix matching for long options,
#   quote the prefix and append '.*', e.g.: `manopt find '-exec.*'` finds
#   both '-exec' and 'execdir'.
#
# EXAMPLES
#   manopt ls l           # same as: manopt ls -l
#   manopt sort reverse   # same as: manopt sort --reverse
#   manopt find -print    # MUST prefix with '-' here.
#   manopt find '-exec.*' # find options *starting* with '-exec'
manopt() {
  local cmd=$1 opt=$2
  [[ $opt == -* ]] || { (( ${#opt} == 1 )) && opt="-$opt" || opt="--$opt"; }
  man "$cmd" | col -b | awk -v opt="$opt" -v RS= '$0 ~ "(^|,)[[:blank:]]+" opt "([[:punct:][:space:]]|$)"'
}

# vars

WIRELESS_INTERFACE="$(iw dev | grep Interface | cut -d ' ' -f 2)"

# source machine specific config

. $HOME/.config/bashrc
