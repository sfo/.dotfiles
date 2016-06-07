#!/bin/bash

# .bash_profile

# will be executed if logging in local or per ssh
# will skip .bashrc --> call it from here
if [ -f ~/.bashrc ] ; then
    . ~/.bashrc
fi

# e.g. call screen
if [ -f ~/.bash_profile.local ]; then
    . ~/.bash_profile.local
fi
