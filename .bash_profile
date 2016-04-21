#!/bin/bash

# .bash_profile

# set 256 color profile where possible
if [[ $COLORTERM == gnome-* && $TERM == xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
    export TERM=gnome-256color
elif infocmp xterm-256color >/dev/null 2>&1; then
    export TERM=xterm-256color
fi

load_dotfiles() {
    declare -a files=(
        $HOME/.bash_options
        $HOME/.bash_exports
        $HOME/.bash_aliases
        $HOME/.bash_prompt
        $HOME/.bash_paths
    )

    for index in ${!files[*]}
    do
        if [[ -r ${files[$index]} ]]; then
            . ${files[$index]}
        fi
    done
}

load_dotfiles
unset load_dotfiles

if [ -f ~/.bash_profile.local ]; then
    . ~/.bash_profile.local
fi
