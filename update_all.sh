#!/bin/zsh

source ~/.zshrc

echo "Updating dotfiles repository ..."
cd ~/.dotfiles
git pull -q

echo "Updating ZSH ..."
cd $ZSH
git pull -q

echo "Updating ZSH custom ..."
cd $ZSH_CUSTOM
git pull -q
git submodule update --init --recursive -q

echo "Update TMUX plugins ..."
~/.tmux/plugins/tpm/bin/install_plugins
~/.tmux/plugins/tpm/bin/update_plugins all

echo "Update vim plugins ..."
vim -c "PluginInstall" -c "qa"
vim -c "PluginUpdate" -c "qa"

echo "Done."
