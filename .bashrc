#!/bin/bash

# .bashrc

# will be executed after tmux/screen is started
# will skip .bash_profile --> do stuff that should happen out of tmux/screen there

# fixes scp not working issue, source: http://unix.stackexchange.com/a/18647
# If not running interactively, don't do anything
[[ $- == *i* ]] || return

if [ -f /etc/bashrc ] ; then
    . /etc/bashrc
fi

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
        $HOME/.bash_completion
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

if [ -f ~/.bashrc.local ]; then
    . ~/.bashrc.local
fi
