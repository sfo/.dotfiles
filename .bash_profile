#!/bin/bash

# .bash_profile

# ATTENTION: will NOT be called if opening via GUI

# will be executed if logging in local (only tty) or per ssh
# will skip .bashrc --> call it from here
if [ -f ~/.bashrc ] ; then
    . ~/.bashrc
fi

# connect to existing tmux session or create new one
if [[ -z "$TMUX" ]] && [ "$SSH_CONNECTION" != "" ]; then
    tmux attach-session -t $USER || tmux new-session -s $USER                                                                                                                                                 
fi

# e.g. call screen
if [ -f ~/.bash_profile.local ]; then
    . ~/.bash_profile.local
fi
