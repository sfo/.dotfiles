#!/bin/bash

ln -snf ~/.dotfiles/htoprc ~/.config/htop/htoprc
ln -snf ~/.dotfiles/.gitconfig ~/
ln -snf ~/.dotfiles/.tmux.conf ~/
ln -snf ~/.dotfiles/.vimrc ~/
ln -snf ~/.dotfiles/.condarc ~/


git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && \
    vim -c "PluginInstall" -c "qa"


git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm && \
    ~/.tmux/plugins/tpm/bin/install_plugins


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && \
    rm -rf ~/.oh-my-zsh/custom && \
    git clone --recurse-submodules https://github.com/sfo/ohsfozsh.git ~/.oh-my-zsh/custom && \
    cd ~/.oh-my-zsh/custom && \
    git submodule update --init --recursive && \
    ln -sf ~/.dotfiles/.zshrc ~/

setupsolarized dircolors.ansi-light
