#!/bin/bash
mv .tmux.conf ~/.tmux.conf
mv .zshrc ~/.zshrc
sudo apt install neovim -y
mkdir ~/.config/nvim -p
mv init.vim ~/.config/nvim/init.vim
