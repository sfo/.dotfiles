#!/bin/zsh

source ${HOME}/.zshrc

echo "Updating dotfiles repository ..."
cd ${HOME}/.dotfiles
git pull -q

echo "Updating ZSH ..."
cd $ZSH
git pull -q

echo "Updating ZSH custom ..."
cd $ZSH_CUSTOM
git pull -q
git submodule update --init --recursive -q
setupsolarized dircolors.ansi-light

echo "Update TMUX plugins ..."
${HOME}/.tmux/plugins/tpm/bin/install_plugins
${HOME}/.tmux/plugins/tpm/bin/update_plugins all

echo "Update vim plugins ..."
vim -c "PluginInstall" -c "qa"
vim -c "PluginUpdate" -c "qa"

echo "Done."
