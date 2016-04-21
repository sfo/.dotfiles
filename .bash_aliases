#!/bin/bash

# .bash_aliases

# Allow aliases to be with sudo
alias sudo='sudo '

alias ls='ls --color=auto'
alias l='ls -CF'
alias ll='ls -lh'
alias la='ls -lha'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias cd..='cd ..'
alias ..='cd ..'
alias ~='cd ~'

if [ -f ~/.bash_aliases.local ]; then
    . ~/.bash_aliases.local
fi
