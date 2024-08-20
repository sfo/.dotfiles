#!/bin/zsh

source ~/.zshrc

## update dotfiles
cd ~/.dotfiles
git pull

## update OMZ
cd $ZSH
git pull

## update OMZ custom stuff
cd $ZSH_CUSTOM
git pull
git submodule update --init --recursive

## update TMUX plugins
~/.tmux/plugins/tpm/bin/install_plugins
~/.tmux/plugins/tpm/bin/update_plugins all

## update vim plugins
vim -c "PluginInstall" -c "qa"
vim -c "PluginUpdate" -c "qa"

