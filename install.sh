#!/bin/bash
echo "Setting up dotfiles..."

# Create symlinks for dotfiles
ln -sf /workspaces/.codespaces/.persistedshare/dotfiles/.vimrc ~/.vimrc

# Install Vim-Plug
echo "Installing Vim-Plug..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Vim plugins non-interactively
echo "Installing Vim plugins..."
vim -E -s -u ~/.vimrc +PlugInstall +qall

echo "Dotfiles setup completed!"
